import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tradingapp/screens/Onborading/Onborading2.dart';
import 'package:tradingapp/widgets/Custom_Button.dart';

class On1 extends StatefulWidget {
  const On1({super.key});

  @override
  State<On1> createState() => _On1State();
}

class _On1State extends State<On1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF051718),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
              width: 112,
              height: 48,
              child: Image.asset('assets/LOGO (1).png')),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Get.to((On2()));
                },
                child: CustomButton(
                  text: 'Get Started',
                  onTap: () {},
                ),
              ),
              SizedBox(
                height: 26,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Aready Have an account?',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      // letterSpacing: 0.20,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to((On2()));
                    },
                    child: Text(
                      '  Log In',
                      style: TextStyle(
                        color: Color(0xFF1ABDCD),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        // letterSpacing: 0.20,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ],
      ),
    );
  }
}
