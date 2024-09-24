import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tradingapp/screens/Onborading/SignUp.dart';
import 'package:tradingapp/widgets/Custom_Button.dart';

class On2 extends StatefulWidget {
  const On2({super.key});

  @override
  State<On2> createState() => _On2State();
}

class _On2State extends State<On2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF051718),
      body: Stack(
        children: [
          Positioned(
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 226, 226, 226).withOpacity(0.1),
                  spreadRadius: 9,
                  blurRadius: 200,
                )
              ]),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                      width: 112,
                      height: 48,
                      child: Image.asset('assets/LOGO (1).png')),
                  SizedBox(
                    height: 40,
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
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 32.0),
                        child: Text(
                          'Email',
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
                    height: 12,
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 23),
                    height: 55,
                    decoration: ShapeDecoration(
                      color: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            // width: 2,
                            color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.white,
                          size: 25,
                        ),
                        hintText: '@gmail.com',
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          // height: 0,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to((Signup()));
                    },
                    child: CustomButton(
                      text: 'Continue',
                      onTap: () {
                        Get.to((Signup()));
                      },
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
        ],
      ),
    );
  }
}
