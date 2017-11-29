class Mover{
  
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;
  
  Mover(){
    location = new PVector(width/2, height/2);
    velocity = new PVector(0,0);
    acceleration = new PVector(-0.001, 0.01);
    topspeed = 10;
  }
  
  void update(){
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
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