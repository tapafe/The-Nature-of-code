class wave{
  
  float amplitude;
  int xspace = 8;
  float period;
  float theta = 0.0;
  PVector origin;
  int w;
  float dx;
  float []yvalues;
  
  wave(PVector o, int w_, float a, float p){
    origin = o.get();
    w = w_;
    amplitude = a;
    period = p;
    dx = (TWO_PI / period)*xspace;
    yvalues = new float[w/xspace];
  }
  
  void calculate() {
    theta += 0.02;

    float x = theta;
    for (int i = 0; i < yvalues.length; i++) {
      yvalues[i] = sin(x)*amplitude;
      x+=dx;
    }
  }
    
   void display() {
    for (int x = 0; x < yvalues.length; x++) {
      stroke(0);
      fill(0,50);
      ellipseMode(CENTER);
      ellipse(origin.x+x*xspace,origin.y+yvalues[x],48,48);
    }
  }
}