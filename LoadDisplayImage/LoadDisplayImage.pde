/**
 * moidification of the original Load and Display 
 * 
 * Load a couple of images and loop them, also add some graphics on top. 
 */
 
// The next line is needed if running in JavaScript Mode with Processing.js
/* @pjs preload="moonwalk.jpg"; */ 

PImage img;  // Declare variable "a" of type PImage
PImage img2;

int time = 0;
float timer = 0;
float x = 0;
float y = 0;
float speed = 20;
float angle = PI / 7;

void setup() {
  size(640, 360);
  // The image file must be in the data folder of the current sketch 
  // to load successfully
  img = loadImage("gato1.png");  // Load the image into the program
  img2 = loadImage("gato2.png");  
  // this is bad bad bad
  // baaaaad
  //frameRate(1);
  timer = millis();
}

void draw() {
  background(200);
  if (time == 0) image(img, 0, 0);
  if (time == 1) image(img2, 0, 0);
  
  noStroke();
  fill(255, 0,0, 50);
  // calculate position
  x = x + speed * cos( angle );
  y = y + speed * sin( angle );
  // check screen limits
  if(x+50 > width) {
    angle = PI - angle;
  }
  if( x < 0 ) {
    angle = 3 * PI - angle;
  }
  if(y+50 > height) {
    angle = 2 * PI - angle;
  }
  if(y < 0) {
    angle = 2 * PI - angle;
  }
  // draw rectangle
  rect(x,y,50,50);
  
  if(millis() - timer > 1000) {
    time = time + 1;
    timer = millis();
  }
  if (time > 1) time = 0;
}
