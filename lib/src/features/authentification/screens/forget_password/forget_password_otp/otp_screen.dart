import 'package:authentification/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/sizes.dart';
import '../../../controllers/otp_controller.dart';

class OTPscreen extends StatelessWidget {
  const OTPscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var otp;
    var otpController = Get.put(OTPController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(tDefaultSize),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(otpTitle, style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 60.0,
              ),),
              Text(otpSubtitle, style: Theme.of(context).textTheme.headline5,),
              SizedBox(height: 40.0,),
              Text(otpMessage + "gongoriko10@gmail.com", textAlign: TextAlign.center,),
              SizedBox(height: 20.0,),
              OtpTextField(
                numberOfFields: 6,
                fillColor: Colors.black.withOpacity(0.1),
                filled: true,
                onSubmit: (code){
                  otp = code;
                  OTPController.instance.verifyOTP(otp);
                  //print("Gael your OTP is => $code");
                  },
              ),
              SizedBox(height: 20.0,),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(),
                        foregroundColor: tWhiteColor,
                        backgroundColor: tDarkColor,
                        side: BorderSide(color: tDarkColor),
                        padding: EdgeInsets.symmetric(vertical: tButtonHeight)),
                    onPressed: () {
                      OTPController.instance.verifyOTP(otp);
                      //Get.to(() => OTPscreen());
                    },
                    child: Text(
                      tNext.toUpperCase(),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
