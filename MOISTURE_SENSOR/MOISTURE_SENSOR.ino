int sensor_pin = A0;
int output_value ;

void setup() {
   Serial myPort;
   myPort = new Serial(this, "COM5", 38400); 
   myPort.bufferUntil('\n');
   Serial.begin(38400);
   }

void serialEvent (Serial myPort){
  delay(2000);
  Serial.write(output_value);
}

void loop() {
      output_value= analogRead(sensor_pin);
      output_value = map(output_value,550,0,0,100)+54;
}
