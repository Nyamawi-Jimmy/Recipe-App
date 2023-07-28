import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dimensions {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;//384
  static late double screenHeight;//808
  static late double blockSizeHorizontal;
  static late double blockSizeVertical;


  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeVertical=screenHeight/100;
    blockSizeHorizontal=screenWidth/100;
  }

  static const primarycolor=Colors.green;
  static final Color paraColor = const Color(0xFF8f837f);

  //Dynamic padding margin height
  static double height10 = screenHeight/80.8;
  static double height20 = screenHeight/40.4;
  static double height15 = screenHeight/53.87;
  static double height16 = screenHeight/50.5;
  static double height30 = screenHeight/26.93;
  static double height25 = screenHeight/32.32;
  static double height40 = screenHeight/20.2;
  static double height45 = screenHeight/17.95;
  static double height120 = screenHeight/6.73;
  static double height100 = screenHeight/8.08;

//Dynamic padding margin width
  static double widtht10 = screenWidth/38.4;
  static double width20 = screenWidth/19.2;
  static double width15 = screenWidth/25.6;
  static double width16 = screenWidth/24;
  static double width40 = screenWidth/9.6;
  static double width120 = screenWidth/3.2;
  static double width10 = screenWidth/38.4;
  static double width8 = screenWidth/48;

//Radius
  static double radius30= screenHeight/26.93;
  static double radius20=screenHeight/40.4;
  static double radius15=screenHeight/53.87;


  //IconSize
  static double iconSize24=screenHeight/33.67;
  static double iconSize16=screenHeight/50.5;

//Image Sizes

  static double listViewImgSize=screenHeight/6.73;
  static double listViewTextContSize=screenHeight/8.08;

//Popular House Detail
  static double populaFoodImgSize350=screenHeight/2.51;

//font size
  static double font16=screenHeight/50.5;
  static double font20=screenHeight/40.4;
  static  double font26=screenHeight/31.08;
}
