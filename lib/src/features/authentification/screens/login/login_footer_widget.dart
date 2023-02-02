
import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
            text: DontHaveAcoount,
            style: Theme.of(context).textTheme.bodyText1,
            children: [
              TextSpan(
                text: tSignup.toUpperCase(),
                style: TextStyle(color: Colors.blueAccent),
              )
            ],
          )),
        )
      ],
    );
  }
}