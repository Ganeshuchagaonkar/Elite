import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as math;




class RadialProgress extends StatefulWidget {
  // final double goalCompleted = 0.7;
  @override
  _RadialProgressState createState() => _RadialProgressState();
}

class _RadialProgressState extends State<RadialProgress> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(
        height: 150,
        width: 150,
      ),
      painter: RadialPainter(),
      
      
    );
  }
}



class RadialPainter extends CustomPainter {
 double progressInDegrees;
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint =Paint()
    ..color =Colors.orange
     ..strokeCap = StrokeCap.round

      ..style = PaintingStyle.stroke

      ..strokeWidth = 10.0;



    Offset center = Offset(size.width / 2, size.height / 2);

    canvas.drawCircle(center, size.width / 2, paint);



    Paint progressPaint = Paint()

      ..shader = LinearGradient(

              colors: [Colors.red, Colors.purple, Colors.purpleAccent])

          .createShader(Rect.fromCircle(center: center, radius: size.width / 2))

      ..strokeCap = StrokeCap.round

      ..style = PaintingStyle.stroke

      ..strokeWidth = 8.0;

canvas.drawArc(

        Rect.fromCircle(center: center, radius: size.width / 2),

        math.radians(-90),

        math.radians(progressInDegrees),

        false,

        progressPaint);

  }

  @override
  bool shouldRepaint(RadialPainter oldDelegate) => true;

  // @override
  // bool shouldRebuildSemantics(RadialPainter oldDelegate) => false;
}
