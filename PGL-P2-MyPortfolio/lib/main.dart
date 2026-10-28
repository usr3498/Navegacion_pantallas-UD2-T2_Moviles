
import 'package:flutter/material.dart';
import 'package:ud2_t2_usr3498_navegacion/shared/styles/App_screens_dark.dart';
import 'screens/home_page.dart';
import 'widgets/Drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        drawerScrimColor: Colors.white,
        drawer: const MyDrawer(),
        appBar: AppBar(
          backgroundColor: AppPortfolioScreensStyles.background,
          foregroundColor: AppPortfolioScreensStyles.textColor,
        ),
        body: const homePage(),
      ),
    );
  }
}
