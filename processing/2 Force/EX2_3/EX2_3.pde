Mover[] movers = new Mover[1];

void setup() {
  size(640,360);
  for (int i = 0; i < movers.length; i++){
    movers[i] = new Mover(random(0.1, 5), 0, 0);
  }
}

void draw() {
  
    background(255);
   
    PVector wind = new PVector(0.01,0);
    PVector gravity = new PVector(0,0.1);
    PVector NWind = new PVector (0, 0);
   
    for (int i = 0; i < movers.length; i++) {
      float c = 0.01;
      PVector friction = movers[i].velocity.get();
      friction.mult(-1);
      friction.normalize();
      friction.mult(c);
      
      PVector t = new PVector (((0 - movers[i].position.x)/50000), 0);
      NWind.add(t);
      
      
   
      movers[i].applyForce(friction);
      movers[i].applyForce(wind);
      movers[i].applyForce(NWind);
      movers[i].applyForce(gravity);
      println(movers[i].velocity.get());
   
      movers[i].update();
      movers[i].display();
      movers[i].checkEdges();
    }
  
}