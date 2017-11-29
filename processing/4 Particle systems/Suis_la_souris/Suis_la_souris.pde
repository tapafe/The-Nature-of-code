ParticleSystem ps;

void setup() {
  size(640,360);
  ps = new ParticleSystem(new PVector(width/2,50));
}

void draw() {
  background(255);
  
  ps.origin.set(mouseX, mouseY, 0);
  ps.addParticle();
  ps.run();
}