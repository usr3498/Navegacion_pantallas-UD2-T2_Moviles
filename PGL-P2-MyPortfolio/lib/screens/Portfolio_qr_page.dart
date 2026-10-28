import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:ud2_t2_usr3498_navegacion/shared/styles/Portfolio_screens_style.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppScreensStyles.screenHeight(context),
      width: AppScreensStyles.screenWidth(context),
      color: AppScreensStyles.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 10,
        children: [
          Image.asset("assets/images/brave_logo.webp", width: 180, fit: BoxFit.contain),
          const Text(
            "A mi me gustra más Brave",
            textAlign: TextAlign.center,
            style: TextStyle(
              textBaseline: TextBaseline.alphabetic,
              decoration: TextDecoration.none,
              fontSize: 30,
              color: AppScreensStyles.textColor,
              fontWeight: FontWeight.bold,
            ),
          ),

          Center(
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: AppScreensStyles.textColor, borderRadius: BorderRadius.circular(12)),
              child: QrImageView(
                data: "https://github.com/usr3498/Navegaci-n_pantallas-UD2-T2_Moviles",
                version: QrVersions.auto,
                size: 200.0,
                backgroundColor: Colors.white,
                eyeStyle: const QrEyeStyle(eyeShape: QrEyeShape.square, color: Colors.black),
                dataModuleStyle: const QrDataModuleStyle(
                  dataModuleShape: QrDataModuleShape.square,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
