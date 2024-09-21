import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E1E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
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