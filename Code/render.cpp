/*

 __  _                                       _
/ _\| |_  _ __  _   _  _ __ ___   _ __ ___  (_)
\ \ | __|| '__|| | | || '_ ` _ \ | '_ ` _ \ | |
_\ \| |_ | |   | |_| || | | | | || | | | | || |
\__/ \__||_|    \__,_||_| |_| |_||_| |_| |_||_|

- Strummy v3
- Using Adan's updated Karplus Strong library

* HOW TO CHANGE CHORD/VOICING PRESETS *
- chord presets are defined at line 86 onwards
- notes are defined using MIDI note numbers. see table here: https://newt.phys.unsw.edu.au/jw/notes.html
- each chord has six indivual notes, written between the curly brackets e.g. {41,46,50,53,58,62}
- the notes are given in order of strings from left to right (e.g. first number relates to string closest to buttons, and so on)
- the order the chords are written relates to the arrangement of buttons:
  the first four chords are the top row of buttons, and the second row are the bottom four, e.g.

  [chord 1][chord 2][chord 3][chord 4]
  [chord 5][chord 6][chord 7][chord 8]

- to change a chord or voicing:
	1. work out the midi number for each note in the chord
	2. find the corresponding button
	3. change the MIDI numbers to match your new chord selection
	4. press 'cmd+s'(mac) to save the new version
	5. press the 'run' button (circular arrow button on bottom left of screen)
*/

#include <Bela.h>
#include <math.h>	// need this for floor()
#include <Scope.h>
#include <KarplusStrong.h>

#define PLAYBACK_BUFFER_SIZE 88200
#define NUMBER_OF_CHORDS 8
#define NUM_STRINGS 6
#define NUM_OF_BUTTONS 8

KarplusStrong string[NUM_STRINGS];

// BUTTONS
int gButtonStatus[NUM_OF_BUTTONS] = {0};
int gButtonPressed[NUM_OF_BUTTONS] = {0};
int gButtonReferences[NUM_OF_BUTTONS] = {1,0,5,4,3,2,7,6};
int gNumberButtonsPressed = 0;
int gOrderButtonPresses[NUM_OF_BUTTONS] = {0}; // store the order of button presses
int gCurrentButton = 0;
int gButtonCounter = 0;

// analog input pins
int gMicPin[NUM_STRINGS] = {0,1,2,3,4,5};

// analog input values
float gMicVal[NUM_STRINGS] = {0};

// temp storage for analog readings
float gMicValTemp[NUM_STRINGS] = {0};
float gMicValComparison[NUM_STRINGS] = {0};

// DC blocking
float gMicConditioned[NUM_STRINGS] = {0};
float gDCxm1[NUM_STRINGS] = {0}; // Mics
float gDCym1[NUM_STRINGS] = {0}; // Mics
float a = 0.995;

// timing and sample counting
int gSampleCount = 0;
int gSampleCountKarplus = 0;
int gReadPointers[NUM_STRINGS] = {0};
int gAudioFramesPerAnalogFrame;

// karplus-strong coefficients
float gf0[NUM_STRINGS] = {0};
float gLossFactor[2] = { 0.7, 0.989 };

// MIDI note tuning
float gF0ForMIDINote[128] = {0};

// Lowest MIDI note used (for calculating frequencies)
int gMinMidiNote = 40;

// Define chord voicings using MIDI notes
float gMidinotes[NUMBER_OF_CHORDS][NUM_STRINGS] = {
														{43,48,52,55,60,64}, // C
														{43,47,50,55,59,67}, // G
														{42,45,50,57,62,66}, // D
														{42,45,50,57,61,64}, // A

														{40,45,52,57,60,64}, // Am
														{40,47,52,55,59,64}, // Em
														{42,47,54,59,62,66}, // Bm
														{42,49,54,57,61,66}, // F#m
													};


// string tuning with all-pass filter
float gC[NUM_STRINGS] = {0};
float gAPYm1[NUM_STRINGS] = {0};
float gAPXm1[NUM_STRINGS] = {0};

// isRunning state for preventing strings being excited before DC-blocking takes effect:
int isRunning;

// global f0 change
int gPotValInt;
int gPotValIntPrev;

int gAudioSampleRate;

void updateNotes(int);

float testingValue = 0;

// Initialise Scope
Scope scope;

float midiToFreq(int midiNote) {
	float semiTonesFromA4 = midiNote - 69.0;
	return pow(2,(semiTonesFromA4/12.0))*440;
}

bool setup(BelaContext *context, void *userData)
{

	// for handling analog inputs
	gAudioFramesPerAnalogFrame = context->audioFrames / context->analogFrames;

	// for use in other functions
	gAudioSampleRate = context->audioSampleRate;

	// calculate frequencies from MIDI note values
	// solution found in http://newt.phys.unsw.edu.au/jw/notes.html
	for (int i = 1; i <= 127; i++){
		gF0ForMIDINote[i] = midiToFreq(i);
	}

	updateNotes(0);	// C2

	for(int i = 0; i < NUM_STRINGS; i++){
		string[i].setup(gAudioSampleRate, midiToFreq(gMinMidiNote), gf0[i]);
	}

	for (int i = 0; i < NUM_OF_BUTTONS; i++){
		pinMode(context, 0, gButtonReferences[i], INPUT);
	}


	for (int i = 0; i < NUM_STRINGS; i++){
		string[i].setLossFactor(gLossFactor[1]);
	}

	// set isRunning state to 0
	isRunning = 0;

	// SCOPE
	scope.setup(6, context->audioSampleRate);

	return true;
}

void render(BelaContext *context, void *userData)
{

	for(unsigned int n = 0; n < context->audioFrames; n++){

		/* -------- BUTTONS and CHORDS --------- */

		gSampleCount++;
		// Increment a counter on every frame for button debounce.
		gButtonCounter++;

		// Read the button every 0.1 seconds (automatic debounce)
		if(gButtonCounter % (int)(context->audioSampleRate*0.01) == 0) {
			// Reset gButtonCounter
			gButtonCounter = 0;

			// Read buttons
			for(int m=0;m<NUM_OF_BUTTONS;m++){
				gButtonStatus[m] = digitalRead(context, 0, gButtonReferences[m]);
			    // Press
				if(gButtonStatus[m] == 1 && !gButtonPressed[m]){

					gButtonPressed[m] = 1;
					// Keep count of total buttons pressed
					gNumberButtonsPressed += gButtonPressed[m];
					// Store the button index in the order array
					gOrderButtonPresses[m] = m;
					// If current button is higher than previous then update
					// if(m >= gCurrentButton){
						gCurrentButton = m;
						updateNotes(gCurrentButton);
					// }
					// Update the damping factor
					for (int i = 0; i < NUM_STRINGS; i++){
						string[i].setLossFactor(gLossFactor[1]);
					}

					rt_printf("Button %d Pressed\n", gCurrentButton);
				}
				// Release
				else if (gButtonStatus[m] == 0 && gButtonPressed[m]){
					// reset variables
					gButtonPressed[m] = 0;
					gOrderButtonPresses[m] = 0;
					// if more than one button held down find the highest pitch and play
					int temp = 0;
					if(gNumberButtonsPressed > 1){
						for(int i=0;i<NUM_OF_BUTTONS;i++){
					        if(gOrderButtonPresses[i]>temp){
					        	temp=gOrderButtonPresses[i];
					        }
						}
						gCurrentButton = temp;
						updateNotes(gCurrentButton);
					} else {
						gCurrentButton = -1;
					}

					rt_printf("Button %d Released\n", m);
					// decrease total presses
					gNumberButtonsPressed += -1;

					// if all released then dampen
					if (gNumberButtonsPressed == 0){
						for (int i = 0; i < NUM_STRINGS; i++){
							string[i].setLossFactor(gLossFactor[0]);
							// if(gButtonCounter % (int)(context->audioSampleRate*1) == 0)
								// rt_printf("no button pressed");
						}
					}
				}
			}
		}

		/* -------- END OF BUTTONS and CHORDS --------- */


		/* ANALOG INPUT */

		// if current audio frame is also an analog frame
		if(!(n%gAudioFramesPerAnalogFrame)){

			// read multiple voice inputs here:

			for (int i = 0; i < NUM_STRINGS; i++){
				gMicVal[i] = analogRead(context, n/gAudioFramesPerAnalogFrame, gMicPin[i]);

				/* SIGNAL CONDITIONING */

				float DCx = gMicVal[i];

				// DC-blocking difference equation from Bela examples:
				// y[n] = x[n] - x[n-1] + a*y[n-1] where a is usually set to around 0.995
				float DCy = DCx - gDCxm1[i] + a * gDCym1[i];

				// update x(n-1) and y(n-1) values for next pass
				gDCxm1[i] = DCx;
				gDCym1[i] = DCy;

				// pass output of DC-blocking filter to gMicConditioned variable (for reading to scope)
				gMicConditioned[i] = DCy;

				gMicValComparison[i] = gMicConditioned[i];

				// Further signal treatment
				// Full wave rectify
				if(gMicConditioned[i] < 0){
					gMicValTemp[i] = gMicConditioned[i]*-1;
				} else {
					gMicValTemp[i] = gMicConditioned[i];
				}

			}
		}

		/* KARPLUS-STRONG */

		float stringVal[NUM_STRINGS] = {0};
		float inputVal;

		// loop over voices
		for (int i = 0; i < NUM_STRINGS; i++){

			// for the first few seconds, I don't want to excite the strings as the DC blocking takes a while to come into effect
			// so I'm using a state chine here:
			if (isRunning == 0 && gSampleCountKarplus <= PLAYBACK_BUFFER_SIZE){
				// put nothing in the input buffer
				inputVal = 0.0;
			}
			if (isRunning == 0 && gSampleCountKarplus == PLAYBACK_BUFFER_SIZE - 1){
				// put the DC-blocked Mic values into the input buffer
				inputVal = gMicConditioned[i]*0.95;
				isRunning = 1;
			}
			if (isRunning == 1){
				inputVal = gMicConditioned[i]*0.95;
			}

			// Process input with K-S algorithm
			stringVal[i] = string[i].process(inputVal);

			// set y(n) to current sample (for when we get to y(n+N))
		}

		float out = 0.0;

		/* OUTPUT & MIX STRINGS */

		for (int i = 0; i < NUM_STRINGS; i++){
			// out += stringVal[i] / NUM_STRINGS;
			out += stringVal[i];
			// out += gMicConditioned[i];
		}

		out *= 1.0 / NUM_STRINGS;

		/* HOUSE-KEEPING AND PLAYBACK */

		// wrap sample counter
		if(++gSampleCountKarplus >= PLAYBACK_BUFFER_SIZE){
			// rt_printf("%f \n", stringValPT[0]);
			gSampleCountKarplus = 0;
		}

		// scale output to prevent clipping
		out *= 0.9;

		// Emergency clip handling
		if(out >= 1.0){
			out = 0.9999;
			// rt_printf("signal clipped \n");
		}
		if(out <= -1.0){
			out = -0.9999;
			// rt_printf("signal clipped \n");
		}


		// use audioWrite() to pass output sample to output buffer
		audioWrite(context, n, 0, out);
		audioWrite(context, n, 1, out);

		scope.log(gMicConditioned[0],gMicConditioned[1],gMicConditioned[2],gMicConditioned[3],gMicConditioned[4],gMicConditioned[5]);
		testingValue = 0;
	}
}

// function to update all notes
void updateNotes(int root){
	int octave = 12;
	int strings[6] = {0};

	for(int i=0;i<NUM_STRINGS;i++){

		strings[i] = gMidinotes[root][i];

		if (strings[i] > 127){
			strings[i] -= octave;
		}

		gf0[i] = gF0ForMIDINote[strings[i]];
		string[i].setFrequency(gf0[i]);
	}

	rt_printf("string 1 = %d, string 2 = %d, string 3 = %d, string 4 = %d, string 5 = %d, string 6 = %d \n", strings[0], strings[1], strings[2], strings[3], strings[4], strings[5]);
	rt_printf("string 1 = %f, string 2 = %f, string 3 = %f, string 4 = %f, string 5 = %f, string 6 = %f \n", gf0[0], gf0[1], gf0[2], gf0[3], gf0[4], gf0[5]);
}

void cleanup(BelaContext *context, void *userData)
{

}
