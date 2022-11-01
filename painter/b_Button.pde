class Button
{
  int buttPosX=0;
  int buttPosY=0;
  color c;
  boolean pressedLeft = false;

  Button(int x, int y, color cb)
  {
    buttPosX = x;
    buttPosY = y;
    c = cb;
  }

  void display()
  {
    fill(c);
    rect(buttPosX, buttPosY, 25, 25);
  }

  void buttPressColor(int pressX, int pressY)
  {
    if ((mouseButton==LEFT)&&
      (pressX>= buttPosX)&&(pressX<buttPosX+25)&&
      (pressY>=buttPosY)&&(pressY<buttPosY+25))
    {
      pressedLeft = true;
      selectedC = c;
      println("Color Selector Pressed");
    }
  }

  void buttPressPix(int pressX, int pressY) 
  {
    if ((mouseButton==LEFT)&&
      (pressX>= buttPosX)&&(pressX<buttPosX+25)&&
      (pressY>=buttPosY)&&(pressY<buttPosY+25))
    {
      pressedLeft = true;
      megaPix = 0;
      crSize=0;
      println("Pixel Painter Pressed");
    }
  }

  void buttPressEraser(int pressX, int pressY) 
  {
    if ((mouseButton==LEFT)&&
      (pressX>= buttPosX)&&(pressX<buttPosX+25)&&
      (pressY>=buttPosY)&&(pressY<buttPosY+25))
    {
      pressedLeft = true;
      megaPix=0;
      crSize=0;
      selectedC = color(255);
      println("Eraser Pressed");
    }
  }

  void buttPressMega(int pressX, int pressY) //paints 4x4 pix
  {
    if ((mouseButton==LEFT)&&
      (pressX>= buttPosX)&&(pressX<buttPosX+25)&&
      (pressY>=buttPosY)&&(pressY<buttPosY+25))
    {
      pressedLeft = true;
      megaPix = 1;
      crSize=0;
      println("Mega Paint Pressed");
    }
  }

  void buttPressCross(int pressX, int pressY) 
  {
    if ((mouseButton==LEFT)&&
      (pressX>= buttPosX)&&(pressX<buttPosX+25)&&
      (pressY>=buttPosY)&&(pressY<buttPosY+25))
    {
      pressedLeft = true;
      megaPix = 0;
      crSize=1;
      println("Cross Pressed");
    }
  }
  
  void buttPressSave(int pressX, int pressY) 
  {
    if ((mouseButton==LEFT)&&
      (pressX>= buttPosX)&&(pressX<buttPosX+25)&&
      (pressY>=buttPosY)&&(pressY<buttPosY+25))
    {
      pressedLeft = true;
      img.save("newImg.png");
      println("Save ME! Pressed");
    }
  }
  
}
