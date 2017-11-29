Vehicle[] Vehicles = new Vehicle[100];

void setup() {
  size(640,360);
  for (int i = 0; i < Vehicles.length; i++){
    Vehicles[i] = new Vehicles(random(0.1, 5), 0, 0);
  }
}

void draw() {
  
    background(255);
  
   
    for (int i = 0; i < Vehicles.length; i++) {
      
      // Wind
      PVector wind = new PVector(0.01,0);
      
      // Gravity
      float m = Vehicles[i].mass;
      PVector gravity = new PVector(0,0.1*m);
      
      // Friction
      float c = 0.01;
      PVector friction = Vehicles[i].velocity.get();
      friction.mult(-1);
      friction.normalize();
      friction.mult(c);
      
      
      //Apply
      Vehicles[i].applyForce(friction);
      Vehicle[i].applyForce(wind);
      movers[i].applyForce(gravity);
   
      movers[i].update();
      movers[i].display();
      movers[i].checkEdges();
    }
  
}