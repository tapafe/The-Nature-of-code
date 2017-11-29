float angle = 0;
float angleVel = 0.2;
float amplitude = 100;

void setup()  {   
  size(720,520);  
}   

void draw() {     
  background(255);  
  stroke(0);
  strokeWeight(2);
  noFill();
  
  for (int x = 0; x <=width; x+= 24){
    float y = amplitude * sin(angle);
    ellipse(x,y+height,48,48);
    
    angle += angleVel;
  }
}