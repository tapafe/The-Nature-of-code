PVector location;
PVector velocity;
Mover m1;

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
  if(keyPressed){
    if (key == 'z'){
    m1.acceleration.mult(1.1);
    }
    else if (key == 's'){
      m1.acceleration.div(1.1);
    }
  }
  println(m1.acceleration.x);
}