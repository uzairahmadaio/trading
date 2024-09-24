import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:tradingapp/screens/Onborading/Login.dart';
import 'package:tradingapp/widgets/Custom_Button.dart';

class LOgincode extends StatefulWidget {
  const LOgincode({super.key});

  @override
  State<LOgincode> createState() => _LOgincodeState();
}

class _LOgincodeState extends State<LOgincode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF051718),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(());
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 32.0),
                      child: Text(
                        '  Log In',
                        style: TextStyle(
                          color: Color(0xFF1ABDCD),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          // letterSpacing: 0.20,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Verify Your Email Address',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  // letterSpacing: 0.20,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Please enter the code sent to',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  // letterSpacing: 0.20,
                ),
              ),
              Text(
                '@gmail.com',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  // letterSpacing: 0.20,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: PinCodeTextField(
                  appContext: context,
                  length: 6,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10),
                    fieldHeight: 50,
                    fieldWidth: 50,
                    activeFillColor: Colors.blueGrey.shade700,
                    inactiveFillColor: Colors.blueGrey.shade700,
                    selectedFillColor: Colors.blueGrey.shade700,
                    activeColor: Colors.blueGrey.shade700,
                    inactiveColor: Colors.blueGrey.shade700,
                    selectedColor: Colors.blueGrey.shade700,
                  ),
                ),
              ),
              // SizedBox(
              //   height: 8,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Haven't received it?",
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
                      '  Resend code',
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
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Wrong email?',
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
                      '  Change Email address',
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
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Get.to((Login()));
                },
                child: CustomButton(
                  text: 'Verify',
                  onTap: () {
                    Get.to((Login()));
                  },
                ),
              ),
              SizedBox(
                height: 76,
              )
            ],
          )
        ],
      ),
    );
  }
}
