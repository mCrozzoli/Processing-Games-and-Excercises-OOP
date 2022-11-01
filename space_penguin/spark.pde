class Spark
{
  float sxPos = 0;
  float syPos = 0;
  float sxVel = 0;
  float syVel = 0;

  color c = color((int)random(190,255), (int)random(190,255), (int)random(190,255));
  float gravity = 0.3;

  Spark(float vx, float vy)
  {
    sxVel = vx;
    syVel = vy;
  }

  void display(float x, float y)
  {
    sxPos = x;
    syPos = y;
    stroke(c);
    point(sxPos, syPos);
  }

  void update()
  {
    sxPos += sxVel;
    syPos += syVel;
    syVel += gravity;
  }
}
