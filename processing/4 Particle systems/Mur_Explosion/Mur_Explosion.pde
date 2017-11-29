ParticleSystem ps;

void setup() {
  size(1280,960);
  ps = new ParticleSystem(100,100,10);
}

void draw() {
  background(255);

  ps.display();
  ps.update();
}

void mousePressed() {
  ps.shatter(); 
}