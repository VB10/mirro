import 'package:flutter/material.dart';
import 'package:web_mirror_cam/camera_view/camera_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CameraView(),
    );
  }
}
