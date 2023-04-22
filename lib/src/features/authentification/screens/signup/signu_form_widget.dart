import 'package:authentification/src/features/authentification/screens/forget_password/forget_password_otp/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../../../../repository/authentification_repository/authentification_repository.dart';
import '../../controllers/signup_controller.dart';
import '../../models/user_model.dart';


class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());

    final _formKey = GlobalKey<FormState>();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                label: Text(tFullName),),
            ),
            const SizedBox(height: tFormHeight - 20,),
            TextFormField(
              controller: controller.email,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined), label: Text(tEmail),),
            ),
            const SizedBox(height: tFormHeight - 20,),
            TextFormField(
              controller: controller.PhoneNo,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.numbers), label: Text(tPhone),),
            ),
            const SizedBox(height: tFormHeight - 20,),
            TextFormField(
              controller: controller.password,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.fingerprint), label: Text(tPasssword),),
            ),
            const SizedBox(height: tFormHeight - 10,),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(),
                      foregroundColor: tWhiteColor,
                      backgroundColor: tDarkColor,
                      side: BorderSide(color: tDarkColor),
                      padding: EdgeInsets.symmetric(vertical: tButtonHeight)
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      /*final user = UserModel(
                        email: controller.email.text.trim(),
                        password: controller.password.text.trim(),
                        fullName: controller.fullName.text.trim(),
                        (),
                    );
                      SignUpController.instance.createUser(user);*/
                      SignUpController.instance.phoneAuthentification(controller.PhoneNo.text.trim());

                    }

                  },
                  child: Text(
                    tSignup.toUpperCase(),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}