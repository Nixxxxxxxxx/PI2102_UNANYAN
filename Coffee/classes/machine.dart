

class Machine
{


  int beans = 100;
  int milk = 100;
  int water = 100;
  int cash = 100;




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
    print('Зерен установлено до 100');
  }

  void setMilk(int amount)
  { 
    milk = amount;
    print('Молока установлено до 100');
  }

  void setWater(int amount)
  { 
    water = amount;
    print('Воды установлено до 200');
  }

  void setCash(int amount)
  { 
    cash = amount;
    print('Денег установлено 100');
  }

  void minusResources()
  {
    beans -= 50;
    water -= 100;
  }

  bool aAvailableResources()
  {
    if( beans >= 50 && water >= 100)
    {
        return true;
    }
    else
    {
      return false;
    }

  }


  

  void makeCoffee()
  {
    if(aAvailableResources())
    {
      minusResources();
      print('Для приготовления кофе потребовалось 50 г зерен и 100 мл воды');
    }
    else
    {
      print('Недостаточно ресурсов');
    }
  }

  
  

}