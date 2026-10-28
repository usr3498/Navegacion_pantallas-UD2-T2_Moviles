import 'package:flutter/material.dart';
import 'package:ud2_t2_usr3498_navegacion/shared/styles/header_portfolio_style.dart';



class Footer extends StatelessWidget {

  final VoidCallback onMainPage;
  final VoidCallback onSecondPage;

  const Footer({super.key, required this.onMainPage, required this.onSecondPage});

  @override
  Widget build(BuildContext context) {
    var footer = Container(
      height: AppHeadFootStyles.screenHeight(context),
      width: AppHeadFootStyles.screenWidth(context),
      color: AppHeadFootStyles.background,
      child: Row(
        children: [
          Container(
            width: AppHeadFootStyles.screenWidth(context) * 0.1,
            height: AppHeadFootStyles.screenHeight(context),
            decoration: BoxDecoration(
              color: AppHeadFootStyles.background,
              border: Border.all(color: AppHeadFootStyles.textColor, width: 2),
            ),
            child: TextButton(
              onPressed: onMainPage,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "Main",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    color: AppHeadFootStyles.textColor,
                    fontSize: 24,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
          ),

          Container(
            width: AppHeadFootStyles.screenWidth(context) * 0.5,
            height: AppHeadFootStyles.screenHeight(context),
            decoration: BoxDecoration(
              color: AppHeadFootStyles.background,
              border: Border.all(color: AppHeadFootStyles.textColor, width: 2),
            ),
            child: TextButton(
              onPressed: onSecondPage,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "PaginaQR",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    color: AppHeadFootStyles.textColor,
                    fontSize: 24,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );

    return footer;
  }
}
