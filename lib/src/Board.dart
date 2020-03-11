import 'package:flutter/material.dart';

class Board extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Text(
              "Your current gaol.",
              style: TextStyle(fontSize: 30, color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            new Text(" ''Get abs in 2 months''  ",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 30,
            ),
            new Text("Analysis of previous goal",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 12.0,
                    color: Colors.black.withOpacity(0.3),
                    offset: Offset(6.0, 7.0),
                  ),
                ],
                color: Colors.white,
              ),
            ),
            SizedBox(height: 35),

            new Text(
              "Previous goals",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            SizedBox(height: 30),

            ///gain weight
            Container(
              padding: const EdgeInsets.all(10),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "gain weight",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  Icon(
                    Icons.delete,
                    size: 30,
                  )
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
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(10),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
              
                    "Finish my degree",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  Icon(
                    Icons.delete,
                    size: 30,
                  )
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
            SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Prepare for exam",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  Icon(
                    Icons.delete,
                    size: 30,
                  )
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
            SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Learn a skill",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  Icon(
                    Icons.delete,
                    size: 30,
                  ),
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
    );
  }
}
