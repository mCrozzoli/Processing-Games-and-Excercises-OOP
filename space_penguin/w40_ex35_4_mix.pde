/*/////////////////////////////////////////
Palppy Firds finds walls in space _ ex35.
Programming for designers _ Oct 2020.
Miguel Angel Crozzoli.

Missing: 1. Sparks | 2. High Score list with name | 3. increasing difficulty (bottom of the main program failed code to implement)
Fix: 1. Mouse event so no jetpack for the bird | 2. a more coherent structure
////////////////////////////////////////*/

PImage backImg;
PImage startImg;

int gamestate = 1; //start window
int collcheck = 0;

int yPos = 0; //global for collision check with wall
int xPos = 0;
int size = 35;
int wxPos = 0; //global for score check

int score = 0;
int highScore = 0;

Avatar a;
Wall[] w = new Wall[18];
Spark[] s = new Spark[100];

void setup()
{
  size(640, 480);
  backImg = loadImage("backimg.jpg");  
  image(backImg, 0, 0, 640, 480);
  startImg = loadImage("startimg.jpg");  
  image(startImg, 0, 0, 640, 480);
  score = 0;

  a = new Avatar((int)width/3, (int)height/3, 3);

  for (int i=0; i<w.length; i++)
  {
    w[i]= new Wall(width+i*(int)random(300, 1000)+100, -2);
  }

  for (int i=0; i<s.length; i++)
  {
    s[i]= new Spark(random(-3, 3), random(-6, 0));
  }
}

void draw()
{
  if (gamestate == 0) 
  {
    background(backImg);
    a.fly();
    a.display();
    a.update();
    for (int i=0; i<w.length; i++)
    {
      w[i].display();
      w[i].update();
      w[i].scoreCheck();
    }
  } else
  {
    background(startImg);
    textSize(25);
    fill(240, 200, 0);
    text("1. The SUN score " + highScore, 15, height-60);
    //fill(255);
    //text("2. The MOON score " + highScore, 20, height-30);
    fill(255, 100, 75);
    text("last score " + score, 167, height-5);
    delay(200);
    if (mousePressed)
    {
      gamestate = 0;
      setup();
    }
  }
}


/*
//Sparks! not working
 
 if (gamestate==1)
 {
 for (int i=0; i<s.length; i++)
 {
 s[i].display(xPos, yPos);
 s[i].update();
 print("sparks");
 }
 */

/*

//Save name  and High Score
 
 String playerName = "";
 String savedName = "";
 String[] sHighScore = new String[2];
 int[] iHighScore = new int[2];
 
 void keyPressed() 
 {
 if (key == '\n' ) 
 {
 savedName = playerName;
 playerName = "";
 } 
 else 
 {
 playerName = playerName + key;
 }
 }
 
 text("Enter your Name and press enter ", 100, 190);
 text(playerName, 120, 230);
 
 for (int i=0; i>iHighScore.length; i++)
 {
 if (score > iHighScore[i])
 {
 iHighScore[i] = score;
 sHighScore[i] = savedName;
 }
 }
 */
