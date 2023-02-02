
import 'package:get/get.dart';

import '../../../repository/authentification_repository/authentification_repository.dart';
import '../screens/dashboard_screen/dashboard.dart';

class OTPController extends GetxController{
  static OTPController instance = Get.find();

  void verifyOTP(String otp) async{
    var isVerify = await AuthentificationRepository.instance.verifyOTP(otp);
    isVerify ? Get.offAll(const Dashboard()) : Get.back();
  }

}