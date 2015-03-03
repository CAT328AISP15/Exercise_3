class ParticleSystem
{
  ArrayList<Particle> particles;
  
  PVector _origin;
  
  int total = 1;
  
  public PVector FollowAgentPosition;

  ParticleSystem(PVector origin, PVector followPosition) 
  {
    FollowAgentPosition = followPosition;
    
    particles = new ArrayList<Particle>();
    _origin = origin.get();
    
    for(int i = 0; i < total; i++)
    {
       particles.add(new Particle(_origin));
    }
  }  
  
  void addParticle()
  {
    particles.add(new Particle(_origin)); 
  }
  
  void run() {
    
    Iterator<Particle> it = particles.iterator();
    
    while (it.hasNext()) {
      Particle p = (Particle) it.next();
      p._followPosition = FollowAgentPosition;
      p.run();
      if (p.isDead()) {
        it.remove();
      }
    }
    
    for(int i = 0; i < total; i++)
    {
       particles.add(new Particle(_origin));
    }
    
    
    
  }
  
}
