class SpaceShip
{
  float x = 600;
  float y = 400;
  void ship()
  {
    fill(225);
   triangle(x,y,(x+100),(y-40),(x+100),(y+40)); 
  }
  void pit()
  {
    fill(5);
    triangle((x +50),y,(x+70),(y-15),(x +70),(y + 15));
  }
  void rocket()  // <--- You need to pass in a variable through the method, that holds the key value
  {
    ship();
    pit();
    if (key == CODED && keyCode == RIGHT )
     {
       if ( x < 450)
       {
         x += 1;
       }
     }
     if (key == CODED && keyCode == LEFT )
     {
       if ( x > 50)
       {
         x -= 1;
       }
     }
     if (key == CODED && keyCode == UP )
     {
       if ( y > 300)
       {
         y -= 1;
       }
     }
     if (key == CODED && keyCode == DOWN )
     {
       if ( y < 700)
       {
         y += 1;
       }
     }
  }
}
