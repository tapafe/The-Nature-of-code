class Pendulum{
  
  PVector origin;
  PVector location;
  
  float r;
  float angle;
  float aVelocity;
  float aAcceleration;
  float damping;
  
  Pendulum(PVector origin_, float r_){
    origin = origin_.get();
    location = new PVector();
    r = r_;
    angle = PI / 4;
    aVelocity = 0.0;
    aAcceleration = 0.1;
    damping = 0.995;
  }
  
  void update(){
    float gravity = 0.4;
    aAcceleration = (-1 * gravity * sin(angle)) / r;
    aVelocity += aAcceleration;
    angle += aVelocity;
    
    aVelocity *= damping;
  }
  
  void display(){
    location.set(r*sin(angle), r*cos(angle));
    location.add(origin);
    
    stroke(0);
    fill(175);
    line(origin.x,origin.y,location.x,location.y);
    ellipse(location.x, location.y, 16,16);
  }
  
  void go(){
    update();
    display();
  }
}