import 'package:flutter/material.dart';
import '../enums.dart';
import '../machine.dart';



class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  var machine = Machine();


  String? selectedItem = 'капучино';
  List<String> items = [
    'капучино',
    'эспрессо',
    'латте',
  ];


  @override

  Widget build(BuildContext context) {
  
    return Container(
      
      child: Column(
        children: [
          Image(
              image: AssetImage('classes/pages/img/coffeeMachine.png'),
            ),

          Center(
            child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DropdownButton<String>(
                  value: selectedItem,
                  items: items.map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                    )).toList(),
                  onChanged: (item) => setState(() => selectedItem = item),
                  ),
                  
            
                ElevatedButton(
                    onPressed: (){
            
                      CoffeeType type = CoffeeType.cappucchino;
                      switch (selectedItem) {
                        case 'капучино':
                          type = CoffeeType.cappucchino;
                        case 'эспрессо':
                          type = CoffeeType.espresso;
                        case 'латте':
                          type = CoffeeType.latte;
                        default:
                      }
                      machine.makeCoffee(type);
                      
                    },
                    child: Text('Сделать кофе'),
                  ),
            
            
              ],
            ),
          )
        ],
      ),
      );


    
  } 
}