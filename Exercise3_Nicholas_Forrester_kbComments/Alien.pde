class Alien {
  float y = 400;
  float x = 400;
  void out()
  {
    ellipse(x,y,100,100);
  }
  void in()
  {
    fill(255);
    ellipse(x,y,20,20);
  }
  void decoration()
  {
    fill(random(125,255),random(125,255),random(125,255));
    ellipse((x + 20),(y + 20),16,16);
    ellipse(x,(y + 30),16,16);
    ellipse((x - 20),(y + 20),16,16);
    ellipse((x - 30),y,16,16);
    ellipse((x - 20),(y - 20),16,16);
    ellipse((x + 25),(y - 20),16,16);
    ellipse(x,(x - 30),16,16);
    ellipse((x + 30),y,16,16);
  }
  void roger() // <--- pass in the value of the key or key through the method for the method to be able to access/utilize
  {
    out();
     in();
     decoration();
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
