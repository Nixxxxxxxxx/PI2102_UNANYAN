

import 'coffee.dart';
import 'enums.dart';
import 'resources.dart';
import 'async.dart';


class Machine
{

  static var resources = Resources(beans: 100, water: 100, milk: 100, cash: 100);

  Resources getResources()
  {
    return resources;
  }

  void fillResources()
  {
    resources.setBeans(resources.beans + 100);
    resources.setWater(resources.water + 100);
    resources.setMilk(resources.milk + 100);

  }

  void insertMoney()
  {
    resources.setCash(resources.cash + 100);
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
    switch (type) {
      case CoffeeType.cappucchino:
        if( resources.beans >= 35 && resources.water >= 50 && resources.milk >= 50)
          {
              return true;
          }
          else
          {
            return false;
          }
      case CoffeeType.espresso:
        if( resources.beans >= 50 && resources.water >= 100)
          {
              return true;
          }
          else
          {
            return false;
          }
      case CoffeeType.latte:
        if( resources.beans >= 35 && resources.water >= 50 && resources.milk >= 100)
          {
              return true;
          }
          else
          {
            return false;
          }
      default:
        return false;
    }
  }

  bool aEnoughMoney(CoffeeType type)
  {
    switch (type) {
      case CoffeeType.cappucchino:
        if(resources.cash >= 175)
          {
            return true;
          }
          else
          {
            return false;
          }
      case CoffeeType.espresso:
        if(resources.cash >= 100)
          {
            return true;
          }
          else
          {
            return false;
          }
      case CoffeeType.latte:
        if(resources.cash >= 200)
          {
            return true;
          }
          else
          {
            return false;
          }
      default:
        return false;
    }
  }

  

  Future<void> makeCoffee(CoffeeType type) async
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
      if(aEnoughMoney(type))
      {
        minusResources(coffee.getBeans(), coffee.getWater(), coffee.getMilk(), coffee.getCash());

        var proccess = await Async.create();
      
        print('Для создания кофе потребовалось ${coffee.getBeans()}г зерен, ${coffee.getWater()}мл воды, ${coffee.getMilk()}мл молока и стоило ${coffee.getBeans()} денег');
      }
      else
      {
        print('Недостаточно денег');
      }

    }
    else
    {
      print('Недостаточно ресурсов');
    }
  }



}