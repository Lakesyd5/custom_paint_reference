import 'package:flutter/material.dart';

//! To draw a line
class Line extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    var paint = Paint();
    // TODO: set propeties to paint
    paint.color = Colors.green.shade800;
    paint.style = PaintingStyle.stroke; // This defines the paint style which can be fill or stroke.
    paint.strokeWidth = 2.0;

    var path = Path();
    path.lineTo(size.width, size.height); // This defines the path of the paint which draws a line from the top left to the bottom right. 

    // TODO: Draw your path
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}

//! To draw a custom curve 
 class TopCurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    var paint = Paint();
    paint.color = Colors.black54;
    paint.style = PaintingStyle.fill;

    var path = Path();
    path.moveTo(0, size.height * 0.3);
    path.quadraticBezierTo(size.width / 2, size.height / 2, size.width, size.height * 0.3); // This is used to control the bend the curve has from left to right
    path.lineTo(size.height, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }
 
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
   
 }


//! To draw a custom wave
class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.blue.withOpacity(0.3);
    paint.style = PaintingStyle.fill;

    var path = Path();
    path.moveTo(0, size.height * 0.9167);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.875, size.width * 0.5, size.height * 0.9167);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.9584, size.width * 1.0, size.height * 0.9167);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
  
}