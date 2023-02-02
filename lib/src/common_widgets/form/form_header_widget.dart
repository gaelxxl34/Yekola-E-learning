import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  FormHeaderWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.heightBetween,
    this.textAlign,
    this.crossAxisAlignment, this.height
  }) : super(key: key);

  String image, title, subtitle;
  final double? heightBetween;
  final CrossAxisAlignment? crossAxisAlignment;
  final TextAlign? textAlign;
  final double? height;


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(image),
          height: size.height * 0.2,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.headline2,
        ),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}
