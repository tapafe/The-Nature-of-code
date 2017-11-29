class Walker {
  float x, y;
  float tx, ty;
  
  float prevX, prevY;
  
  Walker() {
    tx = 0;
    ty = 1000;
  }

  void display() {
    stroke(255);
    line(prevX,prevY,x, y);
  }

  // Randomly move according to floating point values
  void step() {
    prevX = x;
    prevY = y;
    
    x = map(noise(tx),0,1,0,width);
    y = map(noise(ty),0,1,0,height);
    
    x = constrain(x, 0, width-1);
    y = constrain(y, 0, height-1);
    
    tx += 0.01;
    ty += 0.01;
  }
}