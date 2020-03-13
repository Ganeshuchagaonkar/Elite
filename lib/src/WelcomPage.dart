import 'package:flutter/material.dart';
import 'package:focus/HomePage.dart';

class WelcomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(40),
         child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Row(children: <Widget>[
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.orange,
                ),
                SizedBox(width: 10,),
                Text('Eagle Box.',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.orange),),
             ],),
             SizedBox(height:30),
             Text(' Welcome',style:TextStyle(fontSize: 40,fontWeight: FontWeight.bold) ,),
             SizedBox(height:30),
             Text('We will provide you the road to the Success.',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
             SizedBox(height:40),
            //  Image.asset(''),

           
     GestureDetector(
      onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()) );
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
                  
                  )
            ],
            gradient: LinearGradient(                                         
              
          
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
    ),

             
           ],
         ), 
        ),
      ),
      
    );
  }
}
