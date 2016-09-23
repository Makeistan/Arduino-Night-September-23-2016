byte noteON = 144;//note on command
int potPin = A0;
void setup() {
  Serial.begin(9600);
}

void loop() {
  
  int potVal = analogRead(potPin);//read data from potentiometer
  Serial.println(potVal);
  //we have to scale the potentiometer data to fit between 0 and 127 (this is the range of MIDI notes)
  byte note = map(potVal, 0, 1023, 0, 127);
 Serial.println (note);
  
  MIDImessage(noteON, note, 100);//turn note on
  delay(200);//hold note for 300ms
  MIDImessage(noteON, note, 0);//turn note off (note on with velocity 0)
  delay(300);//wait 200ms until triggering next note

}

//send MIDI message
void MIDImessage(byte command, byte data1, byte data2) {
  Serial.write(command);
  Serial.write(data1);
  Serial.write(data2);
}

