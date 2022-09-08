import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './camera_view.dart';

abstract class CameraViewViewModel extends State<CameraView> {
  CameraController? controller;

  bool get controllerInitialled => controller?.value.isInitialized ?? false;
  Future<void> initialize() async {
    final items = await availableCameras();
    if (items.isEmpty) return;
    controller = CameraController(
      items.first,
      ResolutionPreset.max,
    );
    await controller?.initialize();
    controller?.lockCaptureOrientation(DeviceOrientation.landscapeRight);
    controller?.setFocusMode(FocusMode.locked);
    setState(() {});
  }
}
