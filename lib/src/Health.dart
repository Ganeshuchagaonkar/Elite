import 'package:flutter/material.dart';


class Health  extends StatefulWidget {
  
  @override
  _HealthState createState() => _HealthState();
}

class _HealthState extends State<Health> {
   Widget _submitButton() {
    return GestureDetector(
      onTap: (){
        //  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
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
                colors: [
                Color(0xfff7892b), 
                Color(0xFFEE5623)
                ]
                )
                ),
        child: Text(
          'Analyse sleeping schedule',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
  bool value1 =false;
  bool value2 =false;
  bool value3 =false;
  
  void onChangedval1(bool value){
    setState(() {
      value1 =value;
    });
  }
   void onChangedval2(bool value){
    setState(() {
      value2 =value;
    });
  }
   void onChangedval3(bool value){
    setState(() {
      value3 =value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(40),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
          // children of column
           Row(
             children: <Widget>[

                   CircleAvatar(
                 radius: 30,
                 backgroundColor: Colors.orange,
                 
                 ),
                 SizedBox(width:10),
          
               new Text("EagleBox",style: TextStyle(color:Colors.orange,fontSize: 20,fontWeight: FontWeight.bold),),
             ],
           ),
           SizedBox(height: 30,),
        
         new Text("Today's diet plan",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
         SizedBox(height: 30,),

        //  Breakfast Container
         Container(
           padding: const EdgeInsets.all(10),
           height: 60,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
            Text("Breakfast",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            new Checkbox(value: value1, onChanged:onChangedval1),
            //Icon(Icons.arrow_right)
             ],
           ),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
             boxShadow: [
               BoxShadow(
                 blurRadius: 12.0,
                 color: Colors.black.withOpacity(0.2),
                 offset: Offset(6.0,7.0),
               ),
             ],
             color: Colors.white
           ),
         ),
         SizedBox(height: 30,),

    // Lunch Container
          Container(
             padding: const EdgeInsets.all(10),
           
           height: 60,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
            Text("Lunch",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            // Checkbox(value: null, onChanged: )
             new Checkbox(value:value2, onChanged:onChangedval2)
             ],
           ),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
             boxShadow: [
               BoxShadow(
                 blurRadius: 12.0,
                 color: Colors.black.withOpacity(0.2),
                 offset: Offset(6.0,7.0),
               ),
             ],
             color: Colors.white
           ),
         ),
         SizedBox(height: 30,),
        //  Dinner Container
 Container(
    padding: const EdgeInsets.all(10),
           height: 60,
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
            Text("Dinner",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
             new Checkbox(value: value3, onChanged:onChangedval3)
             ],
           ),
           
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(10),
             boxShadow: [
               BoxShadow(
                 blurRadius: 12.0,
                 color: Colors.black.withOpacity(0.2),
                 offset: Offset(6.0,7.0),
               ),
             ],
             color: Colors.white,
           ),
         ),

         SizedBox(height: 30,),


        //  Graph COntainer
        Container(
          height: 200,
            decoration: BoxDecoration(
             boxShadow: [
               BoxShadow(
                 blurRadius: 12.0,
                 color: Colors.black.withOpacity(0.3),
                 offset: Offset(6.0,7.0),
               ),
             ],
             color: Colors.white,
           ),
         ),

         
         SizedBox(height: 30,),
         _submitButton()

         ],
       
       ), //main column


      ),
      // Main Container

      
    );
  }
}
