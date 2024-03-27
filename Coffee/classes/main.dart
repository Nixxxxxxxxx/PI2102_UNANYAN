
import 'package:flutter/material.dart';

import 'enums.dart';
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

               Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
                child: Container(
                  color: Color.fromARGB(200, 200, 136, 54),
                  child: Text(
                    'Сделайте себе немного кофе'
                                
                  ),
                ),
              ),


              ElevatedButton (
                onPressed: (){

                  
                  machine.debugPrintResources();
                },
                child: Text('Получить ресурсы'),
              ),
              

              ElevatedButton (
                onPressed: (){
                  machine.fillResources();

                },
                child: Text('Заполнить ресурсы'),
              ),


              ElevatedButton (
                onPressed: (){
                  machine.makeCoffee(CoffeeType.cappucchino);
        
                },
                child: Text('makeCoffee'),
              ),

        


            ],
          ),

          

        ),

        


      );
  }
}
