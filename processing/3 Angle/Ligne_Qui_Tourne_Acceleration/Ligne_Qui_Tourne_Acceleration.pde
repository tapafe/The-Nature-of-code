float angle = 0;

float aVelocity = 0;

float aAcceleration = 0.001;

void setup() {
  size(640,640);
}

void draw() {
  
    background(255);
    
    fill(175);
    stroke(0);
    rectMode(CENTER);
    translate(width/2, height/2);
    rotate(angle);
    line(-50, 0, 50, 0);
    ellipse(-50, 0, 20, 20);
    ellipse(50, 0, 20, 20);
    
    aVelocity += aAcceleration;
    angle += aVelocity;
}