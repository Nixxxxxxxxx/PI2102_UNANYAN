

import 'package:flutter/material.dart';

import 'machine.dart';

import 'pages/mainPage.dart';
import 'pages/resourcesPage.dart';

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
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('кофе'),
            centerTitle: true,
            backgroundColor: Color.fromARGB(125, 125, 90, 17),

            
            bottom: const TabBar(tabs:
            
            [
              Tab(
                text: 'кофе'
                ),
              Tab(
                text: 'ресурсы'
                ),
            ] 
            ) 
            ),
          
            body: 
              TabBarView(children: 
                [
                  
                  MainPage(),
                  ResourcePage(machine),
                ]
              )


        ),

        
      );
  }
}






