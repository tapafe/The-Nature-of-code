class Vehicle {

  PVector position;
  PVector velocity;
  PVector acceleration;
  
  float wandertheta;
  float r;
  float maxforce;
  float maxspeed;

  Vehicle(float x, float y) {
    r = 3.0;
    position = new PVector(x,y);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    maxforce = 0.1;
    maxspeed = 2;
  }
  
  void run(){
    update();
    display();
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
  
  void seek(PVector target) {
    PVector desired = PVector.sub(target,position);

    desired.normalize();
    desired.mult(maxspeed);

    PVector steer = PVector.sub(desired,velocity);
    steer.limit(maxforce);

    applyForce(steer);
  }

  void display() {
    
    float theta = velocity.heading2D() + radians(90);
    fill(127);
    stroke(0);
    pushMatrix();
    translate(position.x,position.y);
    rotate(theta);
    beginShape(TRIANGLES);
    vertex(0, -r*4);
    vertex(-r*2, r*4);
    vertex(r*2, r*4);
    endShape();
    popMatrix();
  }
  
  
  void wander(){
    float wanderR= 25;
    float wanderD= 80;
    float change = 0.3;
    wandertheta += random(-change,change);
    
    float h =  velocity.heading2D();
    
    PVector circlepos = velocity.get();
    circlepos.normalize();
    circlepos.mult(wanderD);
    circlepos.add(position);
    
    PVector circleOffSet = new PVector(wanderR*cos(wandertheta+h),wanderR*sin(wandertheta+h));
    PVector target = PVector.add(circlepos, circleOffSet);
    seek(target);
    
    if (debug) drawWander(position,circlepos,target,wanderR);
  }
  
  void drawWander(PVector position, PVector circle, PVector target, float rad){
    stroke(0);
    noFill();
    ellipseMode(CENTER);
    ellipse(circle.x,circle.y,rad*2,rad*2);
    ellipse(target.x,target.y,4,4);
    line(position.x,position.y,circle.x,circle.y);
    line(circle.x,circle.y,target.x,target.y);
  }
  
   void borders() {
    if (position.x < -r) position.x = width+r;
    if (position.y < -r) position.y = height+r;
    if (position.x > width+r) position.x = -r;
    if (position.y > height+r) position.y = -r;
  }
  
  
}