class Mover{
  
  PVector location;
  PVector velocity;
  
  Mover(){
    location = new PVector(random(width), random(height));
    velocity = new PVector(random(-2, 2), random(-2, 2));
  }
  
  void update(){
    location.add(velocity);
  }
  
  void display(){
    stroke(0);
    fill(255);
    ellipse(location.x, location.y, 16, 16);
}