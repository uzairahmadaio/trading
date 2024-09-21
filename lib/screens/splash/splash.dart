import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tradingapp/screens/Onborading/Login.dart';
import 'package:tradingapp/screens/Onborading/Onborading1.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => On1(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E1E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 112,
                  height: 48,
                  child: Image.asset('assets/LOGO (1).png')),
            ],
          )
        ],
      ),
    );
  }
}
