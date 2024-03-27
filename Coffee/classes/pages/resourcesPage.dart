import 'package:flutter/material.dart';
import '../machine.dart';

class ResourcePage extends StatefulWidget {


  final Machine machine;
  ResourcePage(this.machine);

  @override
  State<ResourcePage> createState() => _ResourcePageState();
}

class _ResourcePageState extends State<ResourcePage> {




  @override
  Widget build(BuildContext context) {
    return Container(

      child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Text(
            
                'Ресурсы',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),


              Text(
                  'Зерна: ${widget.machine.getResources().beans.toString()}',
                  style: TextStyle(
                  fontSize: 24,
                ),
              ),


              Text(
                  'Вода: ${widget.machine.getResources().water.toString()}',
                  style: TextStyle(
                  fontSize: 24,
                ),
              ),


              Text(
                  'Молоко: ${widget.machine.getResources().milk.toString()}',
                  style: TextStyle(
                  fontSize: 24,
                ),
              ),


              Text(
                  'Деньги: ${widget.machine.getResources().cash.toString()}',
                  style: TextStyle(
                  fontSize: 24,
                ),
              ),

              ElevatedButton(
                  onPressed: (){
                    widget.machine.fillResources();
                    setState(() {
                      
                    });
                  },
                  child: Text('Заполнить ресурсы'),
                ),

                ElevatedButton(
                  onPressed: (){
                    widget.machine.insertMoney();
                    setState(() {
                      
                    });
                  },
                  child: Text('Ввести деньги'))

            ],
          )
        ),


    );
  } 
}