import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../common_widgets/fade_in_animation/animation_design.dart';
import '../../../../common_widgets/fade_in_animation/fade_in_animation_model.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../../../../common_widgets/fade_in_animation/fade_in_animation_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.AnimateIn();

    return Scaffold(
      body: Stack(
        children: [
          tFadeinAnimation(
            durationInMs: 2000,
            animate: AnimatePosition(
                topAfter: 0, topBefore: -80, leftAfter: 0, leftBefore: -80),
            child: Image(
                image: AssetImage(SplashTopImg), width: 120.0, height: 85.0),
          ),
          tFadeinAnimation(
            durationInMs: 2000,
            animate: AnimatePosition(
                topAfter: 80,
                topBefore: 0,
                leftAfter: 115,
                leftBefore: -120),
            child: Column(
              children: [
                Text(gAppname, style: Theme.of(context).textTheme.headline2),
                Text(gAppTagLine, style: Theme.of(context).textTheme.headline4),
              ],
            ),
          ),
          tFadeinAnimation(
            durationInMs: 2400,
            animate: AnimatePosition(
                bottomAfter: 120, bottomBefore: 0, leftAfter: 3, leftBefore: 3),
            child: Image(
                image: AssetImage(SplashMiddleImg),
                width: 400.0,
                height: 310.0),
          ),
        ],
      ),
    );
  }
}
