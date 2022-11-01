class chocStand //it creates the idea of the stand, empty of content
{
  int stock = 0;
  int money = 0;
  String position = " ";

  chocStand(int curStock, int curMoney, String curPos) //the constructor needs to have the same name as the class!
  {
    stock = curStock;
    money = curMoney;
    position = curPos;
  }

  void chocSell(int unitSell)
  {
    stock -= unitSell;
    money += unitSell*6;
  }

  void chocReStock(int unitBuy)
  {
    stock += unitBuy;
    money -= unitBuy*3;
  }

  void changePos(String newPos)
  {
    position = newPos;
  }

  void output()
  {
    println("There are " + stock + " units of choc " + "and " + money + " kr. at the " + position + " wagon.");
  }
}
