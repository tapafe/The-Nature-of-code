Vehicle v;
boolean debug = true;

void setup() {
  size(640,360);
  v = new Vehicle(width/2, height/2);
}

void draw() {
  
    background(255);
    v.run();
    v.wander();
    v.borders();
}

void mousePressed() {
  debug = !debug;
}