float startAngle = 0;
float angleVel = 0.2;

void setup()  {   
  size(400,200);  
}   

void draw() {     
  background(255);
  
  float angle = startAngle;
  
  beginShape();
  for (int x = 0; x <=width; x+= 24){
    float y = map(sin(angle), -1, 1, 0, height);
    stroke(0);
    fill(0,50);
    ellipse(x,y,48,48);
    angle += angleVel;
  }
  endShape();
}