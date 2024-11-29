import 'dart:io';

import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';

class Mathviz {
  static Future<void> render(Widget scene) async {
    WidgetsFlutterBinding.ensureInitialized();

    final screenshotController = ScreenshotController();
    final imageData = await screenshotController.captureFromWidget(scene);

    // TODO: Make this dynamic based or an argument
    final file = File('./output.png');
    await file.writeAsBytes(imageData.buffer.asUint8List());

    if (await file.exists()) {
      print('Successfully saved image to: ${file.absolute.path}');
    } else {
      print('Failed to save image. File does not exist at expected location.');
    }

    exit(0);
  }
}
