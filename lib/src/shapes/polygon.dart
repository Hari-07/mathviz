import 'dart:ui';

import 'package:mathviz/src/shapes/math_shape.dart';

import 'line.dart';

class Polygon extends MathShape {
  final List<Offset> points;

  const Polygon({
    required this.points,
  });

  @override
  void render(Canvas canvas, Paint paint) {
    for (int i = 0; i < points.length; i++) {
      final (Offset, Offset) edge;
      if (i == points.length - 1) {
        edge = (points.last, points.first);
      } else {
        edge = (points[i], points[i + 1]);
      }

      final line = Line(source: edge.$1, dest: edge.$2);
      line.render(canvas, paint);
    }
  }
}
