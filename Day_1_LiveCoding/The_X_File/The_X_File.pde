// THE X FILE
// Task 1: draw your initials .. in my case DJ

// variable --> position in memory where we store information
int x = 10;

void setup() {
  println("start ... ");
  size(400,300);
}

void draw() {
  //         GREY LEVEL
  background(200);
  
  // increase the x axis counter
  x = x + 1;
  
  // check if the object left the screen
  if (x > width) {
    // if it is out of the screen, make it show up
    // on the left side by making the coordinates smaller
    // than the objects width
    x = -120;
  }
  // move the whole thing to the right
  translate(x, 0);
  
  noFill();
  stroke(255);
  rect(10,90,200,120);
  fill(255);
  
  // the D
  
  noStroke();
  rect(20,100,50,101);
  ellipse(70,150,100,100);
  
  // the J
  
  translate(100,110);
  rect(50,6,26,50);
  arc(50, 55, 50, 50, 0, HALF_PI);

}
