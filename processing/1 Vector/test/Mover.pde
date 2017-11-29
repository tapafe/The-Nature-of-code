class Mover{
  
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;
  float tx;
  
  Mover(){
    location = new PVector(width/2, height/2);
    velocity = new PVector(0,0);
    acceleration = new PVector(-0.001, 0.01);
    topspeed = 10;
    tx = 0;
  }
  
  void update(){
    
    float a = map(noise(tx),0,1,0,2);
    acceleration = PVector.random2D();
    acceleration.mult(a);
    
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
    tx += 0.01;
  }
  
  
  void display(){
    stroke(0);
    fill(127);
    ellipse(location.x, location.y, 32, 32);
  }
  
  void checkEdges(){
  if ((location.x > width) || (location.x < 0)){
    velocity.x = velocity.x * -1;
  }
  
  if ((location.y > height) || (location.y < 0)){
    velocity.y = velocity.y * -1;
  }
 }
}