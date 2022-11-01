class Painter
{
  int painterX = int(width*0.5);
  int painterY = 10;
  int scaleFac = 10;
  float gridX = width*0.4;
  float gridY = height*0.25;
  boolean pressedLeft = false;


  Painter()
  {
    img = loadImage("s.png");
  }

  void img()
  {
    image(img, painterX, painterY, 32, 32);
  }

  void scaleIt() 
  {
    for (int x=0; x<32; x++)
    {
      for (int y=0; y<32; y++)
      {
        fill(img.get(x, y));
        rect(gridX+x*scaleFac, gridY+y*scaleFac, scaleFac, scaleFac);
      }
    }
  }

  void paint(int pressX, int pressY)
  {
    if ((mouseButton==LEFT)&&
      (pressX>= gridX)&&(pressX<gridX+32*scaleFac)&&
      (pressY>=gridY)&&(pressY<gridY+32*scaleFac))
    {
      pressedLeft = true;
      fill(selectedC);

      img.set((int)((pressX-gridX)/scaleFac)-crSize, (int)((pressY-gridY)/scaleFac), selectedC); //a for loop?
      img.set((int)((pressX-gridX)/scaleFac)+megaPix+crSize, (int)((pressY-gridY)/scaleFac), selectedC);
      img.set((int)((pressX-gridX)/scaleFac), (int)((pressY-gridY)/scaleFac)+megaPix-crSize, selectedC);
      img.set((int)((pressX-gridX)/scaleFac)+megaPix, (int)((pressY-gridY)/scaleFac)+megaPix+crSize, selectedC);
    }
  }
}
