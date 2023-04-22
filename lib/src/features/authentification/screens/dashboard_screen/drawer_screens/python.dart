import 'package:authentification/src/features/authentification/screens/dashboard_screen/drawer_screens/python_course_level/advanced_level.dart';
import 'package:authentification/src/features/authentification/screens/dashboard_screen/drawer_screens/python_course_level/beginner_level.dart';
import 'package:authentification/src/features/authentification/screens/dashboard_screen/drawer_screens/python_course_level/intermediate_level.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/image_strings.dart';

class PythonCourse extends StatelessWidget {
  const PythonCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final txttheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: DSecondaryColor,
      appBar: AppBar(
        title: Text(
          "Python Course",
          style: Theme.of(context).textTheme.headline4,
        ),
        centerTitle: true,
        backgroundColor: DSecondaryColor,
        iconTheme: IconThemeData(
          color: Colors.black, // set the color of the default icon
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: size.width * 0.9,
              height: size.height * 0.25,
              child: Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 15 ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: tSecondaryColor),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.network('https://cdn-icons-png.flaticon.com/512/924/924915.png', width: size.width * 0.33, height: size.width * 0.33),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Beginner Level', style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(shape: CircleBorder(), backgroundColor: Colors.black),
                                      onPressed: () => Get.to(()=> PythonBeginnerLevel()),
                                      child: Icon(Icons.play_arrow),
                                    ),
                                    Text('12 Lessons', style: TextStyle(fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.9,
              height: size.height * 0.25,
              child: Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 15 ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: tSecondaryColor),
                  padding: EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.network('https://cdn-icons-png.flaticon.com/512/2292/2292038.png', width: size.width * 0.3, height: size.width * 0.34),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Intermediate Level', style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(shape: CircleBorder(), backgroundColor: Colors.black),
                                      onPressed: () => Get.to(()=> PythonIntermediateLevel()),
                                      child: Icon(Icons.play_arrow),
                                    ),
                                    Text('8 Lessons', style: TextStyle(fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.9,
              height: size.height * 0.25,
              child: Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 15 ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: tSecondaryColor),
                  padding: EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.network('https://cdn-icons-png.flaticon.com/512/1698/1698538.png', width: size.width * 0.33, height: size.width * 0.33),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Advanced Level', style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(shape: CircleBorder(), backgroundColor: Colors.black),
                                      onPressed: () => Get.to(()=> PythonAdvancedLevel()),
                                      child: Icon(Icons.play_arrow),
                                    ),
                                    Text('10 Lessons', style: TextStyle(fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      )
    );
  }
}
