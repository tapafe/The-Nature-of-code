Vehicle v;
boolean debug = true;
FlowField flowfield;

void setup() {
  size(640,360);
  flowfield = new FlowField(20);
  v = new Vehicle(width/2, height/2);
}

void draw() {
  
    background(255);
    flowfield.update();
    if (debug) flowfield.display();
    
    v.follow(flowfield);
    v.run();
    v.borders();
}

void mousePressed() {
  debug = !debug;
}