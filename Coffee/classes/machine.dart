

import 'coffee.dart';
import 'enums.dart';
import 'resources.dart';



class Machine
{

  var resources = Resources(beans: 100, water: 100, milk: 100, cash: 100);


  void fillResources()
  {
    resources.setBeans(100);
    resources.setWater(200);
    resources.setMilk(100);
    resources.setCash(100);
  }

  void debugPrintResources()
  {
    print('Зерен осталось: ${resources.getBeans()}, воды осталось: ${resources.getWater()}, молока осталось: ${resources.getMilk()}, денег осталось: ${resources.getCash()}');
  }


  void minusResources(int beans, int water, int milk, int cash)
  {
    resources.beans -= beans;
    resources.water -= water;
    resources.milk -= milk;
    resources.cash -= cash;
  }

  bool aAvailableResources(CoffeeType type)
  {
    if( resources.beans >= 50 && resources.water >= 100)
    {
        return true;
    }
    else
    {
      return false;
    }

  }


  

  void makeCoffee(CoffeeType type)
  {
    ICoffee coffee;
    switch(type)
    {
      case CoffeeType.espresso:
        coffee = Espresso();
      case CoffeeType.cappucchino:
        coffee = Cappucchino();
      case CoffeeType.latte:
        coffee = Latte();
    }


    if(aAvailableResources(type))
    {
      minusResources(coffee.getBeans(), coffee.getWater(), coffee.getMilk(), coffee.getCash());
      print('Для создания кофе потребовалось ${coffee.getBeans()}г зерен, ${coffee.getWater()}мл воды, ${coffee.getMilk()}мл молока и стоило ${coffee.getBeans()} денег');
    }
    else
    {
      print('Недостаточно ресурсов');
    }
  }

}