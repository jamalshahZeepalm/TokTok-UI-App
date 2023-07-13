import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:toktok/res/app_colors.dart';

class CameraScreen extends StatefulWidget {
  CameraScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  CameraController? controller;

  List<CameraDescription> cameras = [];

  Future<void> initCamera() async {
    await availableCameras().then((value) async {
      cameras = value;
    });
    controller = CameraController(cameras[0], ResolutionPreset.max);
    controller?.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            debugPrint('User denied camera access.');
            break;
          default:
            debugPrint('Handle other errors.');
            break;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(children: [
        controller == null
            ? Center(
                child: CircularProgressIndicator.adaptive(),
              )
            : CameraPreview(controller!),
        Padding(
          padding: EdgeInsets.only(top: 600.h, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // SvgPicture.asset(CustomAssets.kEffectsIllustration),
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: AppColors.iconColor,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    width: 64.w,
                    height: 64.w,
                    decoration: BoxDecoration(
                      color: AppColors.iconColor,
                      border: Border.all(
                          color: AppColors.lightBlackColor, width: 1.5.w),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }

  @override
  void initState() {
    super.initState();
    initCamera();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
