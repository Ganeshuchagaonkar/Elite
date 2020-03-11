import 'package:flutter/material.dart';
import 'package:focus/Src/FormPage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
      ),
      home: MyHomePgae()
    );
  }
}

class MyHomePgae extends StatefulWidget {
  @override
  _MyHomePgaeState createState() => _MyHomePgaeState();
}

class _MyHomePgaeState extends State<MyHomePgae> {
 Widget _continue(){
    return GestureDetector(
      onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context) => FormPage(),));
      },
          child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  
                   color: Colors.deepOrange[900].withOpacity(0.6),
                  offset: Offset(6, 7),
                   blurRadius: 12.0,
                  // spreadRadius: 2
                  )
            ],
            gradient: LinearGradient(                                         
              // Color(0xFFFB415B),
          //  Color(0xFFEE5623),
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                Color(0xfff7892b), 
                Color(0xFFEE5623)
                ]
                )
                ),
        child: Text(
          'Continue',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
          body: SingleChildScrollView(
        
        // Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
        child: Container(
           padding: const EdgeInsets.only(top: 100,right: 30,left: 30,bottom: 30),
             child: Column(
              children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.orange,
                radius: 60,
              ),
              SizedBox(height:10),
              new Text("EagleBox.",style: TextStyle(color:Colors.orange,fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height:300),
                _continue(),
                SizedBox(height:20),
                Text("From Eagle Elite Club",style: TextStyle(color:Colors.black54),),
                SizedBox(height:15),
              ], 
             ),
        ),
   
      ),
    );
  }
}
