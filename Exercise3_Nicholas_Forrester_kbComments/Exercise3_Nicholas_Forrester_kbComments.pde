Car c;
Hand h;
Alien a;
SpaceShip s;
Space b;
Toy t;


void setup() {
  size(750,750);
  c = new Car();
  h = new Hand();
  a = new Alien();
  s = new SpaceShip();
  b = new Space();
  t = new Toy(200,200);
 
}
void draw()
{
  background(255);
  
  

  t.display();
  b.outerspace();
 
  c.tonda();
  
  h.hand();
  
  a.out();
  a.in();
  a.decoration();
  
  s.ship();
  s.pit();
  //s.rocket(key);
  
  
}
