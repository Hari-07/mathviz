import 'dart:ui';

import 'package:mathviz/src/shapes/math_shape.dart';

class Line extends MathShape {
  final Offset source;
  final Offset dest;

  const Line({
    required this.source,
    required this.dest,
  });

  @override
  void render(Canvas canvas, Paint paint) {
    final path = Path();
    path.moveTo(source.dx, source.dy);
    path.lineTo(dest.dx, dest.dy);

    canvas.drawPath(path, paint);
  }
}
