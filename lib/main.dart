import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tradingapp/screens/Portfolio/change.dart';
import 'package:tradingapp/screens/Portfolio/edit.dart';
import 'package:tradingapp/screens/bottomNav/bottomNav.dart';
import 'package:tradingapp/screens/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
<<<<<<< HEAD
      home: Change(),
=======
      home: Splash(),
>>>>>>> a40ef20c2dd81c345dfaa25f81da8b3b478b4e1c
    );
  }
}
