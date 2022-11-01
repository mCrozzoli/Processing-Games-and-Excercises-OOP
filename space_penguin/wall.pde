class Wall
{
  int wxPos = 0;
  int wxVel = 0;
  int wHeight = (int)random(55, 200);
  int wSpace = (int)random(175, 300);

  Wall(int x, int vX) 
  {
    wxPos = x;
    wxVel = vX;
  }

  void scoreCheck() 
  {
    if (wxPos==210)
    {
      score++;
    }
    fill(255, 0, 0);
    textSize(40);
    text(score, 100, 50);

    if (score > highScore)
    {
      highScore = score;
    }
  }

  void display()
  {
    fill(255);
    noStroke();
    rect(wxPos, 0, 35, wHeight);
    rect(wxPos, wHeight+wSpace, 35, height);
  }

  void update()
  {
    wxPos += wxVel;

    if (wxPos <-10) //restart wall
    {
      wxPos = (width+300);
    }
    if ((wxPos+size>xPos)&& //wall collision
      (wxPos-size*0.5<xPos)) 
    {
      if ((yPos+size*0.5<wHeight)||
        (yPos+size*0.5>(wHeight+wSpace)))
      {
        collcheck++;
        println("collision n " + collcheck);
        mousePressed = false;
        gamestate = 1;
      }
    }
  }
}
