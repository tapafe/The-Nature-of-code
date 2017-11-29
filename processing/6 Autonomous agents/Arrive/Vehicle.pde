class Vehicle {

  PVector position;
  PVector velocity;
  PVector acceleration;
  
  float r;
  float maxforce;
  float maxspeed;

  Vehicle(float x, float y) {
    r = 3.0;
    position = new PVector(x,y);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    maxforce = 0.1;
    maxspeed = 4;
  }
  
  void applyForce(PVector force) {
    acceleration.add(force);
  }
  
  void update() {
    velocity.add(acceleration);
    velocity.limit(maxspeed);
    position.add(velocity);
    acceleration.mult(0);
  }
  
  void arrive(PVector target) {
    PVector desired = PVector.sub(target,position);

    float d = desired.mag();
    
    if (d < 100) {
      float m = map(d, 0,100, 0,maxspeed);
      desired.setMag(m);
    } else {
      desired.setMag(maxspeed);
    }

    PVector steer = PVector.sub(desired,velocity);
    steer.limit(maxforce);
    applyForce(steer);
  }

  void display() {
    
    float theta = velocity.heading() + PI/2;
    fill(175);
    stroke(0);
    pushMatrix();
    translate(position.x,position.y);
    rotate(theta);
    beginShape();
    vertex(0, -r*4);
    vertex(-r*2, r*4);
    vertex(r*2, r*4);
    endShape(CLOSE);
    popMatrix();
  }
  
  
}