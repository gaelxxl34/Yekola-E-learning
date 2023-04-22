import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/image_strings.dart';
import 'flutter_course_levels/advanced_level.dart';
import 'flutter_course_levels/beginner_level.dart';
import 'flutter_course_levels/intermediate_level.dart';

class FlutterCourse extends StatelessWidget {
  const FlutterCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final txttheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: DSecondaryColor,
      appBar: AppBar(
        title: Text(
          "Flutter Course",
          style: Theme.of(context).textTheme.headline4,
        ),
        centerTitle: true,
        backgroundColor: DSecondaryColor,
        iconTheme: IconThemeData(
          color: Colors.black, // set the color of the default icon
        ),
      ),
      body:  SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                width: size.width * 0.9,
                height: size.height * 0.40,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 15),
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
                                "Beginner Level",
                                style: txttheme.headline4,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Flexible(
                                child: Image(
                                  image: AssetImage(Dashboard4),
                                  width: size.width * 0.2,
                                  height: size.height * 0.25,
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(shape: CircleBorder(), backgroundColor: Colors.black),
                              onPressed: () => Get.to(()=> FlutterBeginnerLevel()),
                              child: Icon(Icons.play_arrow),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("10 lessons", style: txttheme.headline4, overflow: TextOverflow.ellipsis,),
                                Text("Introduction to Flutter", style: txttheme.bodyText2, overflow: TextOverflow.ellipsis,),
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
                width: size.width * 0.9,
                height: size.height * 0.40,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 15),
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
                                "Intermediate Level",
                                style: txttheme.headline4,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Flexible(
                                child: Image(
                                  image: NetworkImage("https://cdn-icons-png.flaticon.com/512/3264/3264814.png"),
                                  width: size.width * 0.2,
                                  height: size.height * 0.25,
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(shape: CircleBorder(), backgroundColor: Colors.black),
                              onPressed: () => Get.to(()=> FlutterIntermediateLevel()),
                              child: Icon(Icons.play_arrow),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("6 Lessons", style: txttheme.headline4, overflow: TextOverflow.ellipsis,),
                                Text("Build first flutter real project", style: txttheme.bodyText2, overflow: TextOverflow.ellipsis,maxLines: 3,),

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
                width: size.width * 0.9,
                height: size.height * 0.40,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 15),
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
                                "Advanced Level",
                                style: txttheme.headline4,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Flexible(
                                child: Image(
                                  image: NetworkImage("https://cdn-icons-png.flaticon.com/512/5704/5704958.png"),
                                  width: size.width * 0.2,
                                  height: size.height * 0.25,
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(shape: CircleBorder(), backgroundColor: Colors.black),
                              onPressed: () => Get.to(()=> FlutterAdvancedLevel()),
                              child: Icon(Icons.play_arrow),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("9 Lessons", style: txttheme.headline4, overflow: TextOverflow.ellipsis,),
                                Text("Backend integration with Firebase", style: txttheme.bodyText2, overflow: TextOverflow.ellipsis, maxLines: 3),
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
      ),
    );
  }
}
