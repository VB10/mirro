import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import './camera_view_view_model.dart';

class CameraViewView extends CameraViewViewModel {
  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controllerInitialled
          ? SizedBox(
              width: context.width,
              height: context.height,
              child: CameraPreview(controller!),
            )
          : const SizedBox(),
    );
  }
}
