import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../common_widgets/fade_in_animation/animation_design.dart';
import '../../../../common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import '../../../../common_widgets/fade_in_animation/fade_in_animation_model.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../login/login_screen.dart';
import '../signup/signup_screnn.dart';

class welcome extends StatelessWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDark = brightness == Brightness.dark;
    final controller = Get.put(FadeInAnimationController());
    controller.AnimateOut();

    return MaterialApp(
        home: Scaffold(
          backgroundColor: isDark ? tDarkColor : tSecondaryColor,
      body: Stack(
        children: [
          tFadeinAnimation(
            durationInMs: 1300,
            animate: AnimatePosition(
              bottomAfter: 0,
              bottomBefore: -100,
              topAfter: 0,
              topBefore: 0,
              leftAfter: 0,
              leftBefore: 0,
              rightAfter: 0,
              rightBefore: 0
            ),
            child: Container(
              padding: EdgeInsets.all(tDefaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: AssetImage(WelcomeImage1),
                    height: height * 0.5,
                  ),
                  Column(
                    children: [
                      Text(
                        tWelcomeTitle,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Text(
                        tWelcomeSubtitle,
                        style: Theme.of(context).textTheme.bodyText1,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: OutlinedButton(
                        onPressed: () => Get.to(LoginScreen()),
                            style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(),
                                textStyle: Theme.of(context).textTheme.headline5,
                                foregroundColor: tWhiteColor,
                                backgroundColor: tRed,
                                side: BorderSide(color: tDarkColor),
                                padding: EdgeInsets.symmetric(vertical: tButtonHeight)
                            ),
                        child: Text(
                          tLogin.toUpperCase(),
                        ),
                      )),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                          child: ElevatedButton(
                            onPressed: () => Get.to(SignUpScreen()),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(),

                                foregroundColor: tWhiteColor,
                                backgroundColor: tAccentColor,
                                side: BorderSide(color: tDarkColor),
                                padding: EdgeInsets.symmetric(vertical: tButtonHeight)
                            ),
                        child: Text(
                          tSignup.toUpperCase(),
                        ),
                      ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
