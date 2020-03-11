import 'package:flutter/material.dart';
import 'package:focus/Src/WelcomePage.dart';


class TextFieldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.orange,
                ),
                SizedBox(width: 10,),
                Text('Eagle Box.',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.orange),),
              ],
            ),
            SizedBox(height: 20,),
            Text(
              'Why do you want achieve this Goal.',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset('../Assets/login.png'),
            SizedBox(height: 30),
            Container(
              
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[200],
                 boxShadow: <BoxShadow>[
              BoxShadow(
                
                color: Colors.black12.withOpacity(0.3),
                offset: Offset(3 ,7),
                blurRadius: 12.0,
                spreadRadius: 2
              )
            ],
                
                
              ),

              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                ),
              ),
            ),
            SizedBox(height: 40,),

            // button

            GestureDetector(
      onTap: () {
        

         Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomPage()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                // color: Colors.orange.shade200,
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
                colors: [Color(0xfff7892b), Color(0xFFEE5623)])),
        child: Text(
          'Next',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    ),
         
          ],
        ),
      ),
    )
      

    );
  }
}
