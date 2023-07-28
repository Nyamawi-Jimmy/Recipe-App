
import 'package:flutter/material.dart';

import '../DImensions/dimensions.dart';

class BigText extends StatelessWidget {
  final String text;
  Color? color;
  double size;
  TextOverflow overflow;

  BigText({Key? key, required this.text,
    this.color = Colors.white  ,
    this.overflow=TextOverflow.ellipsis,
    this.size=0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        fontSize:size==0?Dimensions.font20:size,
        fontFamily: "Roboto",
        color: color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}