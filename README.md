# CustomPainter

This app is just to document my learning of how to use the `CustomPaint` widget and `CustomPainter` class.

- **The Canvas**: Represents the board.
- **The Paint**: Represents the brush.
- **The Path**: Represents the drawing (Basically a sequence of lines and curves).
- **The Size**: Represents your board size.

## Example Code

Here's an example of how to use `CustomPaint` and `CustomPainter` in Flutter:

```dart
import 'package:flutter/material.dart';

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Your custom painting logic here
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: CustomPaint(
          size: Size(300, 300),
          painter: MyCustomPainter(),
        ),
      ),
    ),
  );
}
```