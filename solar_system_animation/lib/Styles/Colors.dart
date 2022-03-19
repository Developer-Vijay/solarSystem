import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Two Color Gradient BackGroundColor

  static const dark_1_blueColor = const Color(0xff0567FA);
  static const dark_1_blackColor = const Color(0xff0B1000);
  static const light_1_lightblackColor = const Color(0xff191E0E);

  // Three Color Gradient
  static const dark_2_blackColor = const Color(0xff0B1000);
  static const dark_2_redColor = const Color(0xffE6525F);
  static const dark_2_blueColor = const Color(0xff019BFA);

  static final LinearGradient twoColorGradient = LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [dark_1_blueColor, light_1_lightblackColor]);

  static final LinearGradient threeColorGradient = LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [Colors.purple, Colors.blue, Colors.black]);
}
