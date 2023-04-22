import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/text_strings.dart';
import '../../../../repository/authentification_repository/authentification_repository.dart';
import '../profile/profile_screen.dart';
import 'drawer_screens/Javascript.dart';
import 'drawer_screens/contact_us.dart';
import 'drawer_screens/flutter.dart';
import 'drawer_screens/java.dart';
import 'drawer_screens/python.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final txttheme = Theme.of(context).textTheme;


    return Scaffold(
      backgroundColor: DSecondaryColor,
      appBar: AppBar(
        title: Text(
          ".Yekola/",
          style: Theme.of(context).textTheme.headline4,
        ),
        centerTitle: true,
        backgroundColor: DSecondaryColor,
        iconTheme: IconThemeData(
          color: Colors.black, // set the color of the default icon
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => ProfileScreen());
            },
            icon: CircleAvatar(
              backgroundImage: AssetImage(ProfileImg2),
            ),
              color: Colors.black
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: tSecondaryColor,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: DSecondaryColor
              ),
              accountEmail: Text("gongoriko10gmail.com"),
              accountName: Text("Gael Bindu"),
              currentAccountPicture: CircleAvatar(
                foregroundImage: AssetImage(ProfileImg2),
              ),
              otherAccountsPictures: [
                CircleAvatar(foregroundImage: AssetImage(ProfileImg2)),
                CircleAvatar(foregroundImage: AssetImage(ProfileImg2)),
              ],
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Contact Us"),
              onTap: () {
                Get.to(()=> ContactUs());
              },
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Courses"),
            ),
            ListTile(
              leading: Icon(Icons.flutter_dash_sharp),
              title: Text("Flutter"),
              onTap: () {
                Get.to(()=> FlutterCourse());
              },
            ),
            ListTile(
              leading: Icon(LineAwesomeIcons.python),
              title: Text("Python"),
              onTap: () => Get.to(()=> PythonCourse()),
            ),
            ListTile(
              leading: Icon(LineAwesomeIcons.java),
              title: Text("Java"),
              onTap: () => Get.to(()=> Java()),
            ),
            ListTile(
              leading: Icon(LineAwesomeIcons.javascript__js_),
              title: Text("Javascript"),
              onTap: () => Get.to(()=> Javascript()),
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome!🖐🏿🖐🏿 back ' ,
                style: txttheme.bodyText2,
              ),
              SizedBox(height: 15,),
              Text(
                DashboardTitle,
                style: txttheme.bodyText2,
              ),
              Text(
                DashboardHeading,
                style: txttheme.headline2,
              ),
              SizedBox(
                height: 20,
              ),

              //search
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(width: 4),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          prefixIconColor: Colors.black,
                          hintText: DashboardSearching,
                          hintStyle: TextStyle(color: Colors.white),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.black),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 2, color: DSecondaryColor),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          filled: true,
                          fillColor: tSecondaryColor,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 0.0, ), // add this
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Icon(
                      CupertinoIcons.pencil_outline,
                      size: 25,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              //categories
              SizedBox(
                height: 50,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 180,
                      height: 50,
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.black,
                            ),
                            child: Center(
                              child: Text(
                                'JS',
                                style: txttheme.headline6
                                    ?.apply(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Flexible(
                            child: Column(
                              children: [
                                Text(
                                  'Java Script',
                                  style: txttheme.headline5,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  '10 lessons',
                                  style: txttheme.bodyText2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 180,
                      height: 50,
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.black,
                            ),
                            child: Center(
                              child: Text(
                                'DS',
                                style: txttheme.headline6
                                    ?.apply(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Flexible(
                            child: Column(
                              children: [
                                Text(
                                  'Data Structure',
                                  style: txttheme.headline5,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  '10 lessons',
                                  style: txttheme.bodyText2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 180,
                      height: 50,
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.black,
                            ),
                            child: Center(
                              child: Text(
                                'A',
                                style: txttheme.headline6
                                    ?.apply(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Flexible(
                            child: Column(
                              children: [
                                Text(
                                  'Algorithms',
                                  style: txttheme.headline5,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  '10 lessons',
                                  style: txttheme.bodyText2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              //banner
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: tSecondaryColor),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(child: Icon(Icons.computer)),
                              Flexible(
                                  child: Image(
                                image: AssetImage(Dashboard1),
                                width: 100,
                              )),
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Text(
                            DashboardBannerTitle1,
                            style: txttheme.headline4,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            DashboardBannerSubtitle,
                            style: txttheme.bodyText2,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: tSecondaryColor),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(child: Icon(Icons.computer)),
                                  Flexible(
                                      child: Image(
                                    image: AssetImage(Dashboard2),
                                    width: 100,
                                  )),
                                ],
                              ),
                              Text(
                                DashboardBannerTitle2,
                                style: txttheme.headline4,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                DashboardBannerSubtitle,
                                style: txttheme.bodyText2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                DashboardButton,
                                style: TextStyle(color: tDarkColor),
                              ),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),

              //top courses
              Text(
                DashboardTopCourses,
                style: txttheme.headline4?.apply(fontSizeFactor: 1.2),
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 375,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, top: 5),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: tSecondaryColor),
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      "Flutter crash course",
                                      style: txttheme.headline4,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Flexible(
                                      child: Image(
                                    image: AssetImage(Dashboard3),
                                    width: 110,
                                    height: 110,
                                  )),
                                ],
                              ),
                              Row(
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(shape: CircleBorder(), backgroundColor: Colors.black),
                                    onPressed: () => Get.to(()=> FlutterCourse()),
                                    child: Icon(Icons.play_arrow),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("3 Levels", style: txttheme.headline4, overflow: TextOverflow.ellipsis,),
                                      Text("Programming languages", style: txttheme.bodyText2, overflow: TextOverflow.ellipsis,),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 375,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, top: 5),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: tSecondaryColor),
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      "HTML/CSS crash course",
                                      style: txttheme.headline4,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Flexible(
                                      child: Image(
                                    image: AssetImage(Dashboard4),
                                    width: 110,
                                    height: 110,
                                  )),
                                ],
                              ),
                              Row(
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(shape: CircleBorder(), backgroundColor: Colors.black),
                                    onPressed: () {},
                                    child: Icon(Icons.play_arrow),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("3 sections", style: txttheme.headline4, overflow: TextOverflow.ellipsis,),
                                      Text("Programming languages", style: txttheme.bodyText2, overflow: TextOverflow.ellipsis,),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 375,
                      height: 200,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10, top: 5),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: tSecondaryColor),
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      "Legal/Hacking crash course",
                                      style: txttheme.headline4,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Flexible(
                                      child: Image(
                                    image: AssetImage(Dashboard5),
                                    width: 110,
                                    height: 110,
                                  )),
                                ],
                              ),
                              Row(
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(shape: CircleBorder(), backgroundColor: Colors.black),
                                    onPressed: () {},
                                    child: Icon(Icons.play_arrow),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("3 sections", style: txttheme.headline4, overflow: TextOverflow.ellipsis,),
                                      Text("Programming languages", style: txttheme.bodyText2, overflow: TextOverflow.ellipsis,),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
