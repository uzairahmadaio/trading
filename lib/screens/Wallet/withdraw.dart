// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Withdraw extends StatefulWidget {
  const Withdraw({super.key});

  @override
  State<Withdraw> createState() => _WithdrawState();
}

class _WithdrawState extends State<Withdraw> {
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
          SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Image.asset(
                        'assets/arrowleft.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      'Withdraw',
                      style: TextStyle(
                          fontSize: 22,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Withdraw Instruction',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      'Enter the amount you wish to withdraw and provide your\n bank account details below',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      'Enter Amount',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 1),
                  height: 55,
                  decoration: ShapeDecoration(
                    color: Color.fromARGB(255, 226, 226, 226).withOpacity(0.1),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          // width: 2,
                          color: const Color.fromARGB(255, 83, 81, 81)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      "Available balance: \$100,000",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(132, 227, 222, 222),
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: 26,
                ),
                Row(
                  children: [
                    Text(
                      'Bank Account Details',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 237, 232, 232),
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Bank Name',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 237, 232, 232),
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 1),
                  height: 55,
                  decoration: ShapeDecoration(
                    color: Color.fromARGB(255, 226, 226, 226).withOpacity(0.1),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          // width: 2,
                          color: const Color.fromARGB(255, 83, 81, 81)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'ABC Bank',
                      hintStyle: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 237, 232, 232),
                          fontWeight: FontWeight.w700),
                      suffixIcon: Icon(
                        EvaIcons.arrowDown,
                        color: Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      'Account Number',
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 1),
                  height: 55,
                  decoration: ShapeDecoration(
                    color: Color.fromARGB(255, 226, 226, 226).withOpacity(0.1),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          // width: 2,
                          color: const Color.fromARGB(255, 83, 81, 81)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      'SWIFT/BIC Code (optional, for international banks)',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 1),
                  height: 55,
                  decoration: ShapeDecoration(
                    color: Color.fromARGB(255, 226, 226, 226).withOpacity(0.1),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          // width: 2,
                          color: const Color.fromARGB(255, 83, 81, 81)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  width: 330,
                  height: 55,
                  decoration: ShapeDecoration(
                    color: Color(0xFF22B495),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 15.46,
                        // fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        // height: 0
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
