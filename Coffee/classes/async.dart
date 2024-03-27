import 'dart:async';


class Async
{

  Async._create();
  
  static Future<Async> create() async
  {

      var component = Async._create();


      await component.heatWater();
      await component.brewCoffee();
      await component.frothMilk();
      await component.mixMilk();
      

      return component;

  }



  Future<void> heatWater() async
  {
    print('__Начался нагрев воды__');

    String message = await finishMessage(3, '__Закончен подогрев воды__');
    
    print(message);


    
  }

  Future<void> brewCoffee() async
  {
    print('__Brewing Coffee Started__');

    String message = await finishMessage(5, '__Приготовление кофе закончено__');
    
    print(message);
  }

  Future<void> frothMilk() async
  {
    print('__Молоко начало пениться__');

    String message = await finishMessage(5, '__Вспенивание молока закончено__');
    
    print(message);
  }

  Future<void> mixMilk() async
  {
    print('__Взбивать молоко начали__');

    String message = await finishMessage(3, '__Смешайте готовое молоко__');
    
    print(message);
  }


  Future<String> finishMessage(int delay, String message)
  {
    return Future.delayed(Duration(seconds: delay), () => message);
  }

}