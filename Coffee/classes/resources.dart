

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
    print('Зерен установлено $amount');
  }

  void setMilk(int amount)
  { 
    milk = amount;
    print('Молока установлено $amount');
  }

  void setWater(int amount)
  { 
    water = amount;
    print('Воды установлено $amount');
  }

  void setCash(int amount)
  { 
    cash = amount;
    print('Денег установлено $amount');
  }


}