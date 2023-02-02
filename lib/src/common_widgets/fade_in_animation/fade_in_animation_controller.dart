import 'package:authentification/src/features/authentification/screens/welcome/welcome.dart';
import 'package:get/get.dart';



class FadeInAnimationController extends GetxController{
  static FadeInAnimationController get find => Get.find();

    RxBool animate = false.obs;

    Future AnimateIn() async {
      await Future.delayed(Duration(milliseconds: 1000));
      animate.value = true;
      await Future.delayed(Duration(milliseconds: 5000));
      animate.value = false;
      await Future.delayed(Duration(milliseconds: 2000));
      Get.offAll( () => welcome() );
      //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => welcome()));
    }
    Future AnimateOut() async {
      await Future.delayed(Duration(milliseconds: 1000));
      animate.value = true;
    }
}