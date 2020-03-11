import 'package:flutter/material.dart';
import 'package:focus/Src/Board.dart';
import 'package:focus/Src/Health.dart';
import 'package:focus/Src/Menu.dart';
import 'package:focus/Src/Task.dart';
//import 'package:focus/Dashboard/Board.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 1;
  final tabs =[
    
    Health(),
    Board(),
    Task(),
    Menu(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.orange,
      //   title: Text("Home Page",style: TextStyle(color:Colors.black),
      //   ),
      //   iconTheme: new IconThemeData(color: Colors.black),
      // ),
      body: tabs[_currentIndex],



      // bottom navigation bar//
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        iconSize: 40,
        fixedColor: Colors.orange,
        type: BottomNavigationBarType.fixed,
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.local_hospital),
          title: Text("Health"),
          backgroundColor: Colors.orange,
          ),

            BottomNavigationBarItem(icon: Icon(Icons.dashboard),
          title: Text("Dashboard"),
          backgroundColor: Colors.orange,
          ),
            BottomNavigationBarItem(icon: Icon(Icons.gamepad),
          title: Text("Task"),
          backgroundColor: Colors.orange,
          ),
            BottomNavigationBarItem(icon: Icon(Icons.menu),
          title: Text("Menu"),
          backgroundColor: Colors.white,
          ),
        ],
        onTap: (index){
       setState(() {
         _currentIndex =index;
       });
        },
        )
    );
  }
}
