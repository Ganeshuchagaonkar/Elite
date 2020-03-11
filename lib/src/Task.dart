import 'package:flutter/material.dart';
// import 'package:focus/Src/RadialProgress.dart';

class Task extends StatelessWidget {
  var currentTime = new DateTime.now();
  var dummyTime = DateTime.parse('2020-03-12 20:18:04z');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding:
              const EdgeInsets.only(top: 100, right: 25, left: 25, bottom: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // RadialProgress(),
              Text(
                'Remaining time : 15 min',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(15),
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Task-1",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                    RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Colors.orange,
                        onPressed: () {},
                        child: Text(
                          'Start',
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 12.0,
                      color: Colors.black.withOpacity(0.2),
                      offset: Offset(6.0, 7.0),
                    ),
                  ],
                  color: Colors.white,
                ),
              ),
              SizedBox(height:20),

              // Tadsk two Container
               Container(
                padding: const EdgeInsets.all(15),
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Task-2",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                    RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Colors.orange,
                        onPressed:null,
                        disabledColor: Colors.grey[600],

                        child: Text(
                          'Start',
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 12.0,
                      color: Colors.black.withOpacity(0.2),
                      offset: Offset(6.0, 7.0),
                    ),
                  ],
                  color: Colors.white,
                ),
              ),


 
            ],
          ),
        ),
      ),
    );
  }
}
