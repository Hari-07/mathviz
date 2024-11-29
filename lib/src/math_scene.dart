import 'package:flutter/material.dart';
import 'package:mathviz/src/shapes/math_shape.dart';

/// This is the root of the diagram
class MathScene extends StatelessWidget {
  final List<MathShape> shapes;

  const MathScene({
    super.key,
    this.shapes = const [],
  });

  Size get size => const Size(640, 480);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.black,
      child: CustomPaint(
        painter: _ScenePainter(shapes),
      ),
    );
  }
}

class _ScenePainter extends CustomPainter {
  final List<MathShape> shapes;

  _ScenePainter(this.shapes);

  @override
  void paint(Canvas canvas, Size size) {
    final defaultPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke;

    for (final shape in shapes) {
      shape.render(canvas, defaultPaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
