import 'dart:math';
import 'dart:ui';

import 'package:mathviz/src/shapes/math_shape.dart';

class Vector extends MathShape {
  final Offset source;
  final Offset dest;

  const Vector({
    required this.source,
    required this.dest,
  });

  @override
  void render(Canvas canvas, Paint paint) {
    final path = Path();
    path.moveTo(source.dx, source.dy);
    path.lineTo(dest.dx, dest.dy);

    // Angle vector makes with x-axis
    final angle = atan2(dest.dy - source.dy, dest.dx - source.dx);

    const arrowAngle = pi / 6;

    // Arrow tips
    path.lineTo(
      dest.dx - 10 * cos(angle - arrowAngle),
      dest.dy - 10 * sin(angle - arrowAngle),
    );
    path.moveTo(dest.dx, dest.dy);
    path.lineTo(
      dest.dx - 10 * cos(angle + arrowAngle),
      dest.dy - 10 * sin(angle + arrowAngle),
    );

    canvas.drawPath(path, paint);
  }
}
