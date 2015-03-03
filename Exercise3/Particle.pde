//Basic framework of a particle from http://natureofcode.com/book/chapter-4-particle-systems/
public class Particle 
{
  PVector _position;
  PVector _velocity;
  PVector _acceleration;
  
  float _lifespan;
  
  public PVector _followPosition;
  public PVector _origin;
  
  int mass = 1;
 
  Particle(PVector a)
  {
    _origin = a;
    _position = a.get();
    _acceleration = new PVector(0, 0);
    _velocity = new PVector(random(-1,1), random(-2,0));
    
    _lifespan = 255;
   
  }
  
  void applyForce(PVector force)
  {
    PVector f = force.get();
    f.div(mass);
    _acceleration.add(f);
  }
  
  void run()
  {
    PVector gravity = new PVector(0, 0.1);
    applyForce(gravity);
    
    update();
    render(); 
  }
  
  void update()
  {
    println("Not Dead!");
    if(isDead())
    {
      println("Particle Dead!"); 
    }
    
    _velocity.add(_acceleration);
    _position.add(_velocity);
    _acceleration.mult(0);
    
    _lifespan -= 2.0;
  }
  
  void render()
  {
    stroke(255, _lifespan);
    fill(255, _lifespan);
    
    ellipse((_position.x + _followPosition.x) - _origin.x, (_position.y + _followPosition.y) - _origin.y, 8, 8); 
  }
  
  boolean isDead()
  {
    if(_lifespan < 0.0)
    {
      return true;
    }
    else
    {
      return false; 
    }
  }
  
}
