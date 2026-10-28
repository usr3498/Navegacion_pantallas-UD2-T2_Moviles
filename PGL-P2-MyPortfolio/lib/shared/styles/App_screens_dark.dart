import 'package:flutter/material.dart';

class AppPortfolioScreensStyles{

  AppPortfolioScreensStyles._();

  static const Color textColorImg= Color.fromRGBO(154, 155, 154, 0.965);
  static const Color textColor= Color.fromRGBO(191, 213, 191, 1);
  static const Color background = Color.fromRGBO(23, 60, 39, 1);

  static double screenHeight(BuildContext context) => MediaQuery.of(context).size.height * 0.8;

  static double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;

}