import 'dart:ui';

// Base class for all shapes
abstract class MathShape {
  const MathShape();

  void render(Canvas canvas, Paint paint);
}
