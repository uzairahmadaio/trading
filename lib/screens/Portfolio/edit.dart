import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  const Edit({super.key});

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
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
            padding: const EdgeInsets.all(12.0),
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
                      width: 80,
                    ),
                    Text(
                      'Edit Profile',
                      style: TextStyle(
                          fontSize: 22,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0),
                      child: Text(
                        'First Name',
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
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 55,
                  decoration: ShapeDecoration(
                    color: Color(0xff5E687),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          // width: 2,
                          color: Colors.grey),
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
                  height: 26,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0),
                      child: Text(
                        'Last Name',
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
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 55,
                  decoration: ShapeDecoration(
                    color: Color(0xff5E687),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          // width: 2,
                          color: Colors.grey),
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
                  height: 26,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0),
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
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 55,
                  decoration: ShapeDecoration(
                    color: Color(0xff5E687),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          // width: 2,
                          color: Colors.grey),
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
                      'Save',
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
