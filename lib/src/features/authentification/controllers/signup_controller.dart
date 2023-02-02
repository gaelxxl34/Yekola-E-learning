import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../firebase_options.dart';
import '../../../repository/authentification_repository/authentification_repository.dart';
import '../../../repository/authentification_repository/exceptions/signup_email_password_failure.dart';
import '../../../repository/user_repository/user_repository.dart';
import '../models/user_model.dart';
import '../screens/dashboard_screen/dashboard.dart';
import '../screens/forget_password/forget_password_otp/otp_screen.dart';
import '../screens/welcome/welcome.dart';


class SignUpController extends GetxController{
  static SignUpController get instance => Get.find();


  // textfield to get the data from the sign up textfield
  late final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final PhoneNo = TextEditingController();

  final UserRepo = Get.put(UserRepository());

  // call this function from sign up screen and see the magic
  void registerUser(String email, String password){
    AuthentificationRepository.instance.createUserWithEmailAndPassword(email, password);
  }

  Future<void> createUser(UserModel user) async {
    await UserRepo.createUser(user);
    phoneAuthentification(user.phoneNo);
    Get.to(() => OTPscreen());
  }
  void phoneAuthentification(String PhoneNo) {
    AuthentificationRepository.instance.phoneAuthentification(PhoneNo);
    Get.to(() => OTPscreen());
  }

}

 

