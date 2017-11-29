float rayon = 0;
float theta = 0;
float thetaB = 2709;
float r = 0;
/*
float r = 100;
float v = 0;
float b = 100;
*/

void setup(){
  size(1600,1080);
  background(255);
  smooth();
  colorMode(HSB);
}

void draw(){
  
  float x = rayon * cos(theta);
  float y = rayon * sin(theta);
  noStroke();
  /*
  if(r < 255 && b == 100){
    r = r + 1;
  }
  else if(b < 255){
    r = r - 1;
    b += 1;
  }
  else
    b = 100;
    */
    
  //float r = map(sin(theta), -1, 1, 0, 255);
  //float v = map(cos(theta), -1, 1, 0, 255);
  //float b = map(cos(thetaB), -1, 1, 0, 255);
  //float r = 0;
  
  fill(r, 255, 255);
  ellipse(x+width/2, y+height/2, 16, 16); 

  theta += 0.01;
  thetaB += 0.01;
  rayon += 0.05;
  r += 0.1;
  print(r);
  
  if (r > 255){
    r = 0;
  }
}