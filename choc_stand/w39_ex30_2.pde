/*/////////////////////////////////////////
The delicious chocolate stand _ ex30.
Programming for designers _ Oct 2020.
Miguel Angel Crozzoli.
////////////////////////////////////////*/


chocStand c;

void setup()
{
  c = new chocStand(40, 250, "Patagonia"); //current stock, money and position
  c.output();
  
  c.chocSell((int)random(15)); //How much choc did you sell?
  c.chocReStock((int)random(15)); //How much choc did you buy (re stock)?
  c.changePos("Copenhagen");
  c.output(); //show me what you got!
}
