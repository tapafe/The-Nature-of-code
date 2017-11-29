class Mover {

  PVector position;
  PVector velocity;
  PVector acceleration;
  float mass;
  float topspeed = 10;

  float angle = 0;
  float aVelocity = 0;
  float aAcceleration = 0.001;
  float theta = 0;

  Mover(float m, float x, float y) {
    mass = m;
    position = new PVector(x,y);
    velocity = new PVector(random(-1,1),random(-1,1));
    acceleration = new PVector(1,0);
  }

  void applyForce(PVector force) {
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }

  void update() {
    
    aAcceleration = acceleration.x / 10;
    aVelocity += aAcceleration;
    aVelocity = constrain(aVelocity,-0.1,0.1);
    angle += aVelocity;
    
    velocity.add(acceleration);
    velocity.limit(topspeed);
    position.add(velocity);

    acceleration.mult(0);
  }

  void display() {
    
    //angle = velocity.heading();
    
    stroke(0);
    strokeWeight(2);
    fill(175,200);
    pushMatrix();
    rectMode(CENTER);
    translate(position.x,position.y);
    rotate(angle);
    rect(0,0,mass*16,mass*16);
    popMatrix();
    
  }
  
  void checkEdges() {

    if (position.x > width) {
      position.x = 0;
    } 
    else if (position.x < 0) {
      position.x = width;
    }

    if (position.y > height) {
      position.y = 0;
    } 
    else if (position.y < 0) {
      position.y = height;
    }
  }

}