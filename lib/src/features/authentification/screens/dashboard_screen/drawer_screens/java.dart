import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';

class Java extends StatelessWidget {
  const Java({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: DSecondaryColor,
      appBar: AppBar(
        title: Text(
          "Java Course",
          style: Theme.of(context).textTheme.headline4,
        ),
        centerTitle: true,
        backgroundColor: DSecondaryColor,
        iconTheme: IconThemeData(
          color: Colors.black, // set the color of the default icon
        ),
      ),
        body: Container(

            padding: EdgeInsets.symmetric(vertical: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: size.width * 0.43,
                      height: size.height * 0.3,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 15 ),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: tSecondaryColor),
                          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.network('https://cdn-icons-png.flaticon.com/512/924/924915.png', width: size.width * 0.3, height: size.width * 0.2),
                              SizedBox(height: 10),
                              Text('Beginner Level', style: TextStyle(fontWeight: FontWeight.bold),),
                              SizedBox(height: 10,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(shape: CircleBorder(), backgroundColor: Colors.black),
                                    onPressed: () {},
                                    child: Icon(Icons.play_arrow),
                                  ),
                                  Text('12 Lessons', style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                    SizedBox(
                      width: size.width * 0.43,
                      height: size.height * 0.3,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 15 ),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: tSecondaryColor),
                          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.network('https://cdn-icons-png.flaticon.com/512/924/924915.png', width: size.width * 0.3, height: size.width * 0.2),
                              SizedBox(height: 10),
                              Text('Beginner Level', style: TextStyle(fontWeight: FontWeight.bold),),
                              SizedBox(height: 10,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(shape: CircleBorder(), backgroundColor: Colors.black),
                                    onPressed: () {},
                                    child: Icon(Icons.play_arrow),
                                  ),
                                  Text('12 Lessons', style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: size.width * 0.89,
                  height: size.height * 0.4,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 15 ),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: tSecondaryColor),
                      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.network('https://cdn-icons-png.flaticon.com/512/924/924915.png', width: size.width * 0.35, height: size.width * 0.35),
                          SizedBox(height: 10),
                          Text('Beginner Level', style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 10,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(shape: CircleBorder(), backgroundColor: Colors.black),
                                onPressed: () {},
                                child: Icon(Icons.play_arrow),
                              ),
                              Text('12 Lessons', style: TextStyle(fontWeight: FontWeight.bold)),
                            ],
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
