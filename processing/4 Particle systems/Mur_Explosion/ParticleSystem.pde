class ParticleSystem {
  ArrayList<Particle> particles;
  
  int rows = 40;
  int cols = 40;
  
  boolean intact = true;

  ParticleSystem(float x, float y, float r) {
    particles = new ArrayList<Particle>();
    
    for (int i = 0; i < rows*cols; i++) {
      addParticle(x + (i%cols)*r, y + (i/rows)*r, r);
    }
  }

  void addParticle(float x, float y, float r) {
    particles.add(new Particle(x, y, r));
  }

  void display() {
    for (Particle p : particles) {
      p.display();
    }
  }

  void shatter() {
    intact = false;
  }

  void update() {
    if (!intact) {
      for (Particle p : particles) {
        p.update();
      }
    }
  }
}