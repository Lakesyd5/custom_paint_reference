import 'package:flutter/material.dart';
import 'dart:math';

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

//! Drawing a Smiley face
class Smiley extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Calculate the radius of the smiley face
    var radius = size.width / 3;

    // The center point for the smiley face
    var center = Offset(size.width / 2, size.height / 2);

    // Draw the head(Circle)
    var paint = Paint()
    ..color = Colors.yellow
    ..style = PaintingStyle.fill;
    canvas.drawCircle(center, radius, paint);

    // Draw the left eye(circle)
    var leftEyeCenter = Offset(center.dx - radius / 2, center.dy - radius / 3);
    paint.color = Colors.white;
    canvas.drawCircle(leftEyeCenter, radius / 5, paint); 

    // Draw the right eye(circle)
    var rightEyeCenter = Offset(center.dx + radius / 2, center.dy - radius / 3);
    paint.color = Colors.white;
    canvas.drawCircle(rightEyeCenter, radius / 5, paint);

    // Draw the mouth (arc)
    // Rect mouthRect = Rect.fromCircle(center: center, radius: radius * 0.6);
    // paint.color = Colors.black;
    // canvas.drawArc(mouthRect, pi * 0.2, pi * 0.6, false, paint);
    // canvas.drawArc(mouthRect, 0, pi, false, paint);

    // Draw the mouth (a simple line smile)
    paint.color = Colors.black;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = radius / 15;
    var smilePath = Path();
    smilePath.moveTo(center.dx - radius / 2, center.dy + radius / 3);
    smilePath.quadraticBezierTo(center.dx, center.dy + radius / 1.3, center.dx + radius / 2, center.dy + radius / 3);
    canvas.drawPath(smilePath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
  
}