PVector location;
PVector velocity;
Mover m1;
Mover m2;
Mover m3;
Mover m4;

void setup(){
  size(640,360);
  location = new PVector(100,100);
  velocity = new PVector(random(0,10),random(3,10));
  m1 = new Mover();
}

void draw(){
  
  background(255);
  
  m1.update();
  m1.checkEdges(); 
  m1.display();
}