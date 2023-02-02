import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../constants/colors.dart';

import '../../controllers/on_bording_controller.dart';


class OnBordingScreen extends StatelessWidget {
    OnBordingScreen({Key? key}) : super(key: key);





  @override
  Widget build(BuildContext context) {
    final obcontroller = OnBordingController();



    return Scaffold(
        body: Stack(
          alignment: Alignment.center,
      children: [
        LiquidSwipe(
          pages: obcontroller.pages,
          liquidController: obcontroller.controller,
          onPageChangeCallback: obcontroller.onPageChangeCallback,
          slideIconWidget: Icon(Icons.arrow_back_ios),
          enableSideReveal: true,
        ),
        Positioned(
          bottom: 60.0,
            child: OutlinedButton(
          onPressed: () => obcontroller.animateToNextSlide(),
          style: ElevatedButton.styleFrom(
            side: BorderSide(color: Colors.black87),
            shape: CircleBorder(),
            padding: EdgeInsets.all(20.0),
            onPrimary: Colors.white
          ),
              child: Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: tDarkColor,
                  shape: BoxShape.circle
                ),
                child: Icon(Icons.arrow_forward_ios),
              ),
        ),
        ),
        Positioned(
          top: 50,
            right: 20,
            child: TextButton(
          onPressed: () => obcontroller.skip(),
          child: Text('Skip', style: TextStyle(color: Colors.yellow),),
        )),
        Obx( () => Positioned(
            bottom: 10,
            child: AnimatedSmoothIndicator(
              activeIndex: obcontroller.currentPage.value,
              count: 3,
              effect: WormEffect(
                activeDotColor: Color(0xFF0925EF),
                dotHeight: 6.0
              ),
            )
          ),
        )
      ],
    ));
  }


}
