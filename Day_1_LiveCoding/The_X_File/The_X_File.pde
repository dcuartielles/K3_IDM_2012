// THE X FILE
// Task 1: draw your initials .. in my case DJ

void setup() {
  println("start ... ");
  size(400,300);
}

void draw() {
  //         GREY LEVEL
  background(200);
  
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
