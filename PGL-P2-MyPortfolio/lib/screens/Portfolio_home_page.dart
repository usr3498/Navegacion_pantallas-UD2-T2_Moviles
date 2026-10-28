import 'package:flutter/material.dart';
import 'package:ud2_t2_usr3498_navegacion/shared/styles/Portfolio_screens_style.dart';
import 'package:ud2_t2_usr3498_navegacion/shared/styles/Portfolio_colored_box.dart';


class PortfolioHomePage extends StatelessWidget {
  static const List<String> _hobbiesList = [
    "Gimnasio",
    'Baloncesto',
    'Robótica',
    'Programación',
    "Música",
    "Videojuegos",
    "Anime",
    "Peliculas",
    "Montaña",
    "Playa",
    "Leer",
    "Pasear",
  ];

  const PortfolioHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var PortfolioHomePage = Container(
      height: AppPortfolioScreensStyles.screenHeight(context),
      width: AppPortfolioScreensStyles.screenWidth(context),
      color: AppPortfolioScreensStyles.background,
      child: SingleChildScrollView(
        child: Wrap(
          spacing: 2,
          runSpacing: 8,
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/foto_curriculum.webp", width: 180, fit: BoxFit.contain),
                  const Text(
                    "Estudiante de programación que también apasionado por la IA y ciberseguridad. Aparte estos son mis jobies:",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20,
                      color: AppPortfolioScreensStyles.textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ..._hobbiesList
                .map(
                  (hobby) => MyColoredBox(
                    text: hobby,
                    fontSize: 18,
                    margin: const EdgeInsets.only(left: 10, top: 10),
                    borderRadius: BorderRadius.circular(20),
                  ),
                )
                .toList(),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/shrek_main.webp", width: 180, fit: BoxFit.contain),
                  const Text(
                    "Yo viendo mi código",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 30,
                      color: AppPortfolioScreensStyles.textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    return PortfolioHomePage;
  }
}
