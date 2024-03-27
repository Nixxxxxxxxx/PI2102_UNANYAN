

class Resources
{



  int beans = 0;
  int water = 0;
  int milk = 0;
  int cash = 0;


  Resources({required this.beans, required this.water, required this.milk, required this.cash});




  int getBeans()
  {
    return beans;
  }

  int getMilk()
  {
    return milk;
  }

  int getWater()
  {
    return water;
  }

  int getCash()
  {
    return cash;
  }



  void setBeans(int amount)
  { 
    beans = amount;
    print('Установить зерен на $amount');
  }

  void setMilk(int amount)
  { 
    milk = amount;
    print('Молока налить на $amount');
  }

  void setWater(int amount)
  { 
    water = amount;
    print('Воды налить на $amount');
  }

  void setCash(int amount)
  { 
    cash = amount;
    print('Денег $amount');
  }


}