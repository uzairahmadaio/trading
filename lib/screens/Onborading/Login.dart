import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tradingapp/widgets/CustomTextField.dart';
import 'package:tradingapp/widgets/CustomTextField1.dart';
import 'package:tradingapp/widgets/Custom_Button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E1E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome',
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
          CustomTextField1(
            text: 'Email',
            icon: Icons.email_outlined,
            text1: '@gmail.com',
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
            height: 16,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: Text(
                  'Forget Password',
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    // letterSpacing: 0.20,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 80,
          ),
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
        ],
      ),
    );
  }
}
