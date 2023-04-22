import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../../../../repository/authentification_repository/authentification_repository.dart';
import '../dashboard_screen/dashboard.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(
      backgroundColor: DSecondaryColor,
      appBar: AppBar(
        backgroundColor: DSecondaryColor,
        leading: IconButton(
          onPressed: () {
            Get.to(() => Dashboard());
          },
          icon: Icon(LineAwesomeIcons.angle_left),
        ),
        title: Text(tProfile, style: Theme.of(context).textTheme.headline4),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [

              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image(image: AssetImage(ProfileImg1))),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                tProfileHeading,
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                tProfileSubheading,
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    style: OutlinedButton.styleFrom(
                        shape: StadiumBorder(),
                        foregroundColor: tWhiteColor,
                      backgroundColor: tDarkColor,
                        ),
                    onPressed: () {},
                    child: Text(tEditProfile),
                  )),
              const SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 10),

              // -- Menu
              ListTile(
                onTap: (){},
                leading: Container(
                  width: 40, height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: tAccentColor.withOpacity(0.1),
                  ),
                  child: Icon(LineAwesomeIcons.cog, color: tAccentColor,),
                ),
                title: Text(tMenu2, style: Theme.of(context).textTheme.bodyText1,),
                trailing: Container(
                    width: 30, height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black.withOpacity(0.2),
                    ),
                  child: Icon(LineAwesomeIcons.angle_right,size: 18.0, color: Colors.grey,),
              ),
              ),
              ListTile(
                onTap: (){},
                leading: Container(
                  width: 40, height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: tAccentColor.withOpacity(0.1),
                  ),
                  child: Icon(LineAwesomeIcons.wallet, color: tAccentColor,),
                ),
                title: Text(tMenu4, style: Theme.of(context).textTheme.bodyText1,),
                trailing: Container(
                  width: 30, height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.2),
                  ),
                  child: Icon(LineAwesomeIcons.angle_right,size: 18.0, color: Colors.grey,),
                ),
              ),
              ListTile(
                onTap: (){},
                leading: Container(
                  width: 40, height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: tAccentColor.withOpacity(0.1),
                  ),
                  child: Icon(LineAwesomeIcons.user_check, color: tAccentColor,),
                ),
                title: Text(tMenu5, style: Theme.of(context).textTheme.bodyText1,),
                trailing: Container(
                  width: 30, height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.2),
                  ),
                  child: Icon(LineAwesomeIcons.angle_right,size: 18.0, color: Colors.grey,),
                ),
              ),
              ListTile(
                onTap: (){},
                leading: Container(
                  width: 40, height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: tAccentColor.withOpacity(0.1),
                  ),
                  child: Icon(LineAwesomeIcons.info, color: tAccentColor,),
                ),
                title: Text(tMenu3, style: Theme.of(context).textTheme.bodyText1,),
                trailing: Container(
                  width: 30, height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.2),
                  ),
                  child: Icon(LineAwesomeIcons.angle_right,size: 18.0, color: Colors.grey,),
                ),
              ),
              ListTile(
                onTap: (){
                  AuthentificationRepository.instance.logout();
                },
                leading: Container(
                  width: 40, height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: tAccentColor.withOpacity(0.1),
                  ),
                  child: Icon(LineAwesomeIcons.alternate_sign_out, color: tAccentColor,),
                ),
                title: Text(tMenu1, style: TextStyle(color: Colors.white),),
                trailing: Container(
                  width: 30, height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.2),
                  ),
                  child: Icon(LineAwesomeIcons.angle_right,size: 18.0, color: Colors.grey,),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
