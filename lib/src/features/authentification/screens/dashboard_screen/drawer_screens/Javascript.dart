import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';

class Javascript extends StatelessWidget {
  const Javascript({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DSecondaryColor,
      appBar: AppBar(
        title: Text(
          "Javascript Course",
          style: Theme.of(context).textTheme.headline4,
        ),
        centerTitle: true,
        backgroundColor: DSecondaryColor,
        iconTheme: IconThemeData(
          color: Colors.black, // set the color of the default icon
        ),
      ),
    );
  }
}
