import 'dart:ui';

import 'package:mathviz/src/shapes/math_shape.dart';

class Circle extends MathShape {
  final Offset center;
  final double radius;

  const Circle({
    required this.center,
    required this.radius,
  });

  @override
  void render(Canvas canvas, Paint paint) {
    canvas.drawCircle(
      center,
      radius,
      paint,
    );
  }
}
