/*/////////////////////////////////////////
The weird Pixel Painter _ ex34.
Programming for designers _ Oct 2020.
Miguel Angel Crozzoli.
////////////////////////////////////////*/
 
PImage img;
color selectedC = color(0);
int megaPix;
int crSize;

Button[] bCol = new Button[8];
Button[] bGrey = new Button[8];

Button bPixPaint;
Button bEraser;
Button bMegaPaint;
Button bCross;
Button bSave;

Painter p;

void setup()
{
  size(640, 480);
  p = new Painter();


  for (int i=0; i<bCol.length; i++)
  {
    bCol[i]= new Button(10+i*25, 10, col[i]);
  }

  for (int i=0; i<bGrey.length; i++)
  {
    bGrey[i]= new Button(10+i*25, 35, grey[i]);
  }

  bPixPaint = new Button(25, 100, color(100));
  text("PixPainter", 50, 115);
  bEraser = new Button(50, 125, color(120));
  text("Eraser", 75, 140);
  bMegaPaint = new Button(75, 150, color(140));
  text("Mega Painter", 100, 165);
  bCross = new Button(100, 175, color(160));
  text("Cross", 125, 190);
  bSave = new Button(25, 250, color(98));
  text("Save ME!", 14, 245);
}


void mousePressed()
{
  p.paint(mouseX, mouseY);

  for (int i=0; i<bCol.length; i++)
  {
    bCol[i].buttPressColor(mouseX, mouseY);
  }

  for (int i=0; i<bGrey.length; i++)
  {
    bGrey[i].buttPressColor(mouseX, mouseY);
  }

  bPixPaint.buttPressPix(mouseX, mouseY);
  bEraser.buttPressEraser(mouseX, mouseY);
  bMegaPaint.buttPressMega(mouseX, mouseY);
  bCross.buttPressCross(mouseX, mouseY);
  bSave.buttPressSave(mouseX, mouseY);
}


void draw()
{
  p.paint(mouseX, mouseY);
  p.img();
  p.scaleIt();

  for (int i=0; i<bCol.length; i++)
  {
    bCol[i].display();
    bCol[i].buttPressColor(mouseX, mouseY);
  }

  for (int i=0; i<bGrey.length; i++)
  {
    bGrey[i].display();
    bGrey[i].buttPressColor(mouseX, mouseY);
  }

  bPixPaint.display();
  bPixPaint.buttPressPix(mouseX, mouseY);

  bEraser.display();
  bEraser.buttPressEraser(mouseX, mouseY);

  bMegaPaint.display();
  bMegaPaint.buttPressMega(mouseX, mouseY);

  bCross.display();
  bCross.buttPressCross(mouseX, mouseY);

  bSave.display();
  bSave.buttPressSave(mouseX, mouseY);
}
