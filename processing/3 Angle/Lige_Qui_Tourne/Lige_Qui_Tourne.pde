float angle = 0;

void setup() {
  size(640,640);
}

void draw() {
  
    background(255);
    translate(width/2, height/2);
    rotate(angle);
    line(-50, 0, 50, 0);
    angle += 0.075;
}