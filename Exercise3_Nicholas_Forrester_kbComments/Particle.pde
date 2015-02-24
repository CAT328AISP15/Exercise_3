class Particle
{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  
   Particle(PVector l) {
    location = l.get();
    acceleration = new PVector(-0.25,-0.05);
    velocity = new PVector(0,0);
    lifespan = 255;
  }
  void run() {
    update();
    display();
  }
 
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
     lifespan -= 5.0;
  }
 
  void display() {
    stroke(0,lifespan);
    fill(175,lifespan);
    ellipse(location.x,location.y,8,8);
  }
  
  boolean isDead()   // <--- where is this method called?
  {
     if (lifespan < 0.0) 
     {
      return true;
      } 
    else 
    {
      return false;
    }
  }
  
}
