
import 'package:flutter/material.dart';

import 'machine.dart';

void main() {




  runApp(MaterialApp(
      home: CoffeeMachine(),

  ));
}

class CoffeeMachine extends StatefulWidget {
  @override
  State<CoffeeMachine> createState() => _CoffeeMachineState();
}

class _CoffeeMachineState extends State<CoffeeMachine> {

  var machine = Machine();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
        appBar: AppBar(
          title: Text('кофе'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(125, 125, 90, 17)
        ),

        body: Center(
          child: Column(
            children: [

              ElevatedButton (
                onPressed: (){

                  List<int> resources = [
                    machine.getBeans(),
                    machine.getMilk(),
                    machine.getWater(),
                  ];
                  print(resources);
                },
                child: Text('Получить ресурсы'),
              ),
              

              ElevatedButton (
                onPressed: (){
                  machine.setBeans(100);
                  machine.setMilk(100);
                  machine.setWater(200);

                },
                child: Text('Пополнить ресурсы'),
              ),


              ElevatedButton (
                onPressed: (){
                  machine.makeCoffee();

                },
                child: Text('Сделать кофе'),
              ),




            ],
          ),

          

        ),

      );
  }
}
