import 'package:custom_painter/custom_painter.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          CustomPaint(
            size: Size(screenSize.width, screenSize.height),
            painter: CurvePainter(),
          ),
          CustomPaint(
            size: Size(screenSize.width, screenSize.height),
            painter: TopCurvePainter(),
          ),
        ],
      ),
    );
  }
}
