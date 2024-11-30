import 'package:flutter/material.dart';
import 'package:mathviz/mathviz.dart';

void main() {
  run();
}

void run() async {
  final scene = MathScene(
    shapes: const [
      Circle(center: Offset(20, 20), radius: 10),
    ],
  );

  await Mathviz.render(scene);
}
