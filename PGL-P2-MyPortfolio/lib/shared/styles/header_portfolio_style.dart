import 'package:flutter/material.dart';

class AppHeadFootStyles{

  AppHeadFootStyles._();

  static const Color background = Color.fromARGB(0, 0, 0, 255);
  static const Color textColor = Color.fromARGB(255, 8, 8, 8);

  static double screenHeight(BuildContext context) => MediaQuery.of(context).size.height * 0.1;

  static double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;

}