import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Privacy extends StatefulWidget {
  const Privacy({super.key});

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
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
                      width: 50,
                    ),
                    Text(
                      'Privacy Policy',
                      style: TextStyle(
                          fontSize: 22,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Text(
                  'Sollicitudin bibendum elementum erat commodo ac in. Velit\nnec massa arcu faucibus.',
                  style: TextStyle(
                      fontSize: 13,
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 26,
                ),
                Row(children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width - 25,
                    child: Text(
                      "1. Lorem ipsum dolor sit amet consectetur. Ullamcorper sed\nfeugiat sit non potenti. Sollicitudin bibendum elementum \nerat commodo ac in. Velit nec massa arcu faucibus. Libero\neuismod amet commodo quis. Sed auctor in fringilla\nfaucibus. Lectus orci nisi magnis elit tellus vitae bibendum\nenim. Urna ipsum nisl venenatis rhoncus lacinia vel tempor.\nAliquet nibh amet tortor orci lacus. Dolor tortor nisl urna\npenatibus massa ultricies non adipiscing sit.",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ]),
                SizedBox(
                  height: 32,
                ),
                Row(children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width - 25,
                    child: Text(
                      "2. Lorem ipsum dolor sit amet consectetur. Ullamcorper sed\nfeugiat sit non potenti. Sollicitudin bibendum elementum \nerat commodo ac in. Velit nec massa arcu faucibus. Libero\neuismod amet commodo quis. Sed auctor in fringilla\nfaucibus. Lectus orci nisi magnis elit tellus vitae bibendum\nenim. Urna ipsum nisl venenatis rhoncus lacinia vel tempor.\nAliquet nibh amet tortor orci lacus. Dolor tortor nisl urna\npenatibus massa ultricies non adipiscing sit.",
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ]),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width - 25,
                  child: Text(
                    "Lorem ipsum dolor sit amet consectetur. Ullamcorper sed\nfeugiat sit non potenti. Sollicitudin bibendum elementum \nerat commodo ac in. Velit nec massa arcu faucibus. Libero\neuismod amet commodo quis. Sed auctor in fringilla\nfaucibus. Lectus orci nisi magnis elit tellus vitae bibendum\nenim. Urna ipsum nisl venenatis rhoncus lacinia vel tempor.",
                    style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w600),
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
