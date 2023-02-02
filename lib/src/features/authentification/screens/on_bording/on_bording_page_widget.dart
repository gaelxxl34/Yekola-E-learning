import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';
import '../../models/model_on_boarding.dart';

class OnBoradingPageWidget extends StatelessWidget {
  const OnBoradingPageWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final OnBordingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(tDefaultSize),
      color: model.bgcolor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image(image: AssetImage(model.image), height: 170),
          Column(
            children: [
              Text(
                model.title,
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                model.subTitle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Text(model.counterText, style: Theme.of(context).textTheme.headline6),
          SizedBox(
            height: 50.0,
          )
        ],
      ),
    );
  }
}
