class Avatar
{
  //int xPos = 0; //as global variable for collision
  //int yPos = 0; //as global variable for collision 
  //int size = 35; //as global variable for collision
  float yVelocity = 0;

  Avatar(int x, int y, int vY)
  {
    xPos = x;
    yPos = y;
    yVelocity = vY;
  }

  void display()
  {
    fill(255, 235, 0); //body
    ellipse(xPos, yPos, size, size);
    fill(0); //eye
    ellipse(xPos+5, yPos-10, 5, 5);
    fill(255, 50, 0); //pick
    triangle(xPos+15, yPos-5, xPos+15, yPos+5, xPos+50, yPos);
    if (yVelocity == -10)
    {
      fill(255, 10, 0); //fire!
      rect(xPos-10, yPos+15, 20, 45);
    }
  }

  void fly()
  {
    if (mousePressed == true) 
    {
      yVelocity = -10;
      //mousePressed = false; // how to create a one time mousePressed
    } else if (mousePressed == false)
    {
      yVelocity = 3;
    }
  }

  void update()
  {
    if (yPos+size*0.5>height || //collision with top and bottom
      yPos-size*0.5<0)
    {
      collcheck++;
      println("collision n " + collcheck);
      mousePressed=false;
      gamestate = 1;
    } else 
    {
      yPos += yVelocity;
    }
  }
}
