

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import '../../../constants/colors.dart';
import '../../../constants/image_strings.dart';
import '../../../constants/text_strings.dart';
import '../models/model_on_boarding.dart';
import '../screens/on_bording/on_bording_page_widget.dart';

class OnBordingController extends GetxController{
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoradingPageWidget(
      model: OnBordingModel(
          image: OnbordingImage1,
          title: OnboardTitle1,
          subTitle: OnboardSubitle1,
          counterText: Onboardounter1,
          bgcolor: onboardColor1,


      ),
    ),
    OnBoradingPageWidget(
      model: OnBordingModel(
          image: OnbordingImage2,
          title: OnboardTitle2,
          subTitle: OnboardSubitle2,
          counterText: Onboardounter2,
          bgcolor: onboardColor2
      ),
    ),
    OnBoradingPageWidget(
      model: OnBordingModel(
          image: OnbordingImage3,
          title: OnboardTitle3,
          subTitle: OnboardSubitle3,
          counterText: Onboardounter3,
          bgcolor: onboardColor3
      ),
    ),
  ];
  skip() => controller.jumpToPage(page: 2);
  animateToNextSlide(){
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }

  void onPageChangeCallback(int activePageIndex) => currentPage.value = activePageIndex;
}