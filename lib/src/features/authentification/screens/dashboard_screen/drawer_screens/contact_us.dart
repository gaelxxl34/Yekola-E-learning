import 'dart:ui';

import 'package:authentification/src/features/authentification/screens/dashboard_screen/dashboard.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/image_strings.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: DSecondaryColor,
      appBar: AppBar(
        title: Text(
          "Mentors",
          style: Theme.of(context).textTheme.headline4,
        ),
        centerTitle: true,
        backgroundColor: DSecondaryColor,
        iconTheme: IconThemeData(
          color: Colors.black, // set the color of the default icon
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 15, bottom: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Find Greats", style: TextStyle(fontSize: 30, color: Colors.white54)),
                  Text("Skilled Mentors",
                      style: TextStyle(fontSize: 30,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 3
                          ..color = Colors.black!,
                      ),
                  ),

                ],
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 325.0,
                child: ListView(
                  children: <Widget>[
                    CarouselSlider(
                      options: CarouselOptions(
                        height: 280.0,
                        aspectRatio: 14/7,
                        viewportFraction: 0.6,
                        enableInfiniteScroll: true,
                        autoPlay: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 780),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                      ),
                      items: [
                        Container(

                          width: 350,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: tSecondaryColor,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.all(3.0),
                                  child: CircleAvatar(
                                  radius: 50,
                                  backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/107554725?s=400&u=6349381a02eb56372d77f665360a4135de7712b1&v=4'),
                                )
                              ),
                              Padding(
                                padding: const EdgeInsets.all(0),
                                child: Text(
                                  "Gael Ongoriko",
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Text(
                                  "Flutter Samurai, java Junkie",
                                  style: TextStyle(
                                    fontSize: 22.0,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),


              Text("Get in touch",
                style: TextStyle(fontSize: 25,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 2
                    ..color = Colors.black!,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 6.0, right: 15, top: 6),
                child: Container(
                  child: ListTile(

                    title: Text("Bedinner level", style: TextStyle(color: Colors.black),),
                    subtitle: Text("Learn all flutter basics", style: TextStyle(color: Colors.black),),
                    tileColor: tSecondaryColor,
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/107554725?s=400&u=6349381a02eb56372d77f665360a4135de7712b1&v=4'),
                    ),
                    trailing: IconButton(icon: Icon(Icons.check), onPressed: (){}, color: Colors.black, iconSize: 40,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 6.0, right: 15),
                child: Container(
                  child: ListTile(

                    title: Text("Bedinner level", style: TextStyle(color: Colors.black),),
                    subtitle: Text("Learn all flutter basics", style: TextStyle(color: Colors.black),),
                    tileColor: tSecondaryColor,
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/107554725?s=400&u=6349381a02eb56372d77f665360a4135de7712b1&v=4'),
                    ),
                    trailing: IconButton(icon: Icon(Icons.check), onPressed: (){}, color: Colors.black, iconSize: 40,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 6.0, right: 15),
                child: Container(
                  child: ListTile(

                    title: Text("Bedinner level", style: TextStyle(color: Colors.black),),
                    subtitle: Text("Learn all flutter basics", style: TextStyle(color: Colors.black),),
                    tileColor: tSecondaryColor,
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/107554725?s=400&u=6349381a02eb56372d77f665360a4135de7712b1&v=4'),
                    ),
                    trailing: IconButton(icon: Icon(Icons.check), onPressed: (){}, color: Colors.black, iconSize: 40,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 6.0, right: 15),
                child: Container(
                  child: ListTile(

                    title: Text("Bedinner level", style: TextStyle(color: Colors.black),),
                    subtitle: Text("Learn all flutter basics", style: TextStyle(color: Colors.black),),
                    tileColor: tSecondaryColor,
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/107554725?s=400&u=6349381a02eb56372d77f665360a4135de7712b1&v=4'),
                    ),
                    trailing: IconButton(icon: Icon(Icons.check), onPressed: (){}, color: Colors.black, iconSize: 40,),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 6.0, right: 15),
                child: Container(
                  child: ListTile(

                    title: Text("Bedinner level", style: TextStyle(color: Colors.black),),
                    subtitle: Text("Learn all flutter basics", style: TextStyle(color: Colors.black),),
                    tileColor: tSecondaryColor,
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/107554725?s=400&u=6349381a02eb56372d77f665360a4135de7712b1&v=4'),
                    ),
                    trailing: IconButton(icon: Icon(Icons.check), onPressed: (){}, color: Colors.black, iconSize: 40,),
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
