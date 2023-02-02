import 'package:authentification/src/constants/image_strings.dart';
import 'package:authentification/src/features/authentification/screens/signup/signu_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../common_widgets/form/form_header_widget.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../../../../repository/authentification_repository/authentification_repository.dart';
import '../login/login-form.dart';
import '../login/login_footer_widget.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(
                  image: WelcomeImage1,
                  title: signUpTile,
                  subtitle: signUpSubTile, heightBetween: null, crossAxisAlignment: CrossAxisAlignment.start, height: null,
                ),
                SignUpFormWidget(),
                Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Or"),
                const SizedBox(height: tFormHeight - 20),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(),
                        foregroundColor: tDarkColor,
                        side: BorderSide(color: tDarkColor),
                        padding:
                        EdgeInsets.symmetric(vertical: tButtonHeight)),
                    icon: Image(
                      image: AssetImage(GoogleLogo),
                      width: 20.0,
                    ),
                    onPressed: () {},
                    label: Text(tSignInWithGoogle, style: Theme.of(context).textTheme.headline5,),
                  ),
                ),
                const SizedBox(height: tFormHeight - 20),
                TextButton(
                  onPressed: () {},
                  child: Text.rich(TextSpan(
                    text: AlreadyHaveAcoount,
                    style: Theme.of(context).textTheme.bodyText1,
                    children: [
                      TextSpan(
                        text: tLogin.toUpperCase(),
                        style: TextStyle(color: Colors.blueAccent),
                      )
                    ],
                  )),
                )
              ],
            )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


