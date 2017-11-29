class ParticleSystem {
  ArrayList<Particle> particles;
  PVector origin;

  ParticleSystem(PVector position) {
    origin = position.get();
    particles = new ArrayList<Particle>();
  }

  void addParticle() {
    float r = random(1);
    if (r < 0.3) { 
      particles.add(new Confetti(origin));
    }
    else if (r < 0.6){
      particles.add(new Confetti_2(origin));
    }
    else{
      particles.add(new Confetti_3(origin));
    }
  }

  void run() {
    for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      p.run();
      if (p.isDead()) {
        particles.remove(i);
      }
    }
  }
}