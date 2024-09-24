import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Term extends StatefulWidget {
  const Term({super.key});

  @override
  State<Term> createState() => _TermState();
}

class _TermState extends State<Term> {
  @override
  bool isChecked = false;
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
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/arrowleft.png',
                      width: 50,
                      height: 50,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      'Terms and Condition',
                      style: TextStyle(
                          fontSize: 22,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 26,
                ),
                Row(children: [
                  Text(
                    "Lorem ipsum dolor sit amet consectetur. Ullamcorper sed\nfeugiat sit non potenti. Sollicitudin bibendum elementum \nerat commodo ac in. Velit nec massa arcu faucibus. Libero\neuismod amet commodo quis. Sed auctor in fringilla\nfaucibus. Lectus orci nisi magnis elit tellus vitae bibendum\nenim. Urna ipsum nisl venenatis rhoncus lacinia vel tempor.\nAliquet nibh amet tortor orci lacus. Dolor tortor nisl urna\npenatibus massa ultricies non adipiscing sit.",
                    style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.bold),
                  )
                ]),
                SizedBox(
                  height: 32,
                ),
                Row(children: [
                  Text(
                    "Lorem ipsum dolor sit amet consectetur. Ullamcorper sed\nfeugiat sit non potenti. Sollicitudin bibendum elementum \nerat commodo ac in. Velit nec massa arcu faucibus. Libero\neuismod amet commodo quis. Sed auctor in fringilla\nfaucibus. Lectus orci nisi magnis elit tellus vitae bibendum\nenim. Urna ipsum nisl venenatis rhoncus lacinia vel tempor.\nAliquet nibh amet tortor orci lacus. Dolor tortor nisl urna\npenatibus massa ultricies non adipiscing sit.",
                    style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.bold),
                  )
                ]),
                Row(children: [
                  Text(
                    "Lorem ipsum dolor sit amet consectetur. Ullamcorper sed\nfeugiat sit non potenti. Sollicitudin bibendum elementum \nerat commodo ac in. Velit nec massa arcu faucibus. Libero\neuismod amet commodo quis. Sed auctor in fringilla\nfaucibus. Lectus orci nisi magnis elit tellus vitae bibendum\nenim. Urna ipsum nisl venenatis rhoncus lacinia vel tempor.\nAliquet nibh amet tortor orci lacus. Dolor tortor nisl urna\npenatibus massa ultricies non adipiscing sit.",
                    style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.bold),
                  )
                ]),
                Row(
                  children: [
                    CupertinoCheckbox(
                      value: isChecked,
                      activeColor: Colors.green,
                      inactiveColor: Colors.white,
                      onChanged: (newBool) {
                        setState(() {
                          isChecked = newBool!;
                        });
                      },
                    ),
                    Text(
                      'I Have Read and Accept the Terms and Conditions',
                      style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
