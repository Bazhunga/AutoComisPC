import processing.serial.*;
//import java.io*;
int r;
Serial myPort;
 
void setup()
{
  myPort = new Serial(this, "COM4", 115200);
}
 
void draw()
{
  //do nothing
}


void keyPressed()
{
// exception handling in case of key pressed
  switch (key) {
    case 'a':
      myPort.write('0');    
      break;
    case 'b':
       myPort.write('1'); 
      break;     
    default: 
      break;
  }
}
