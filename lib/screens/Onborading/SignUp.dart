// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tradingapp/widgets/CustomTextField.dart';
import 'package:tradingapp/widgets/CustomTextField1.dart';
import 'package:tradingapp/widgets/Custom_Button.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E1E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'Join ------',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  // letterSpacing: 0.20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'And Join Any Users in Your Country',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  // letterSpacing: 0.20,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              CustomTextField(
                text: 'First name',
                text1: 'Sohaib',
              ),
              SizedBox(
                height: 8,
              ),
              CustomTextField(
                text: 'Last name',
                text1: 'Sohaib',
              ),
              SizedBox(
                height: 8,
              ),
              CustomTextField1(
                text: 'Create password',
                text1: '*********',
                icon: Icons.lock,
              ),
              SizedBox(
                height: 8,
              ),
              CustomTextField1(
                text: 'Confirm password',
                text1: '*********',
                icon: Icons.lock,
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                      style: GoogleFonts.poppins(
                        color: Color(0xFF1ABDCD),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'By creating an account,i agree to the',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        TextSpan(text: '  Term of Use '),
                        TextSpan(
                          text: 'acknownledge that I have read the ',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        TextSpan(text: ' Privacy policy an'),
                      ]),
                ),
              )
            ],
          ),
          Column(
            children: [
              CustomButton(
                text: 'Create account',
                onTap: () {
                  Get.to(());
                },
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
                      Get.to(());
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
