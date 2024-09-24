import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tradingapp/screens/theme/theme.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border(
                            left: BorderSide(
                              color: Colors.grey, // Border color
                              width: 0.5, // Border width
                            ),
                            right: BorderSide(
                              color: Colors.grey, // Border color
                              width: 1.0, // Border width
                            ),
                          ),
                          color: Color.fromARGB(255, 41, 76, 78),
                        ),
                        child: Icon(Icons.arrow_back_ios, color: Colors.white),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.message_outlined, color: Colors.white),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Talk to Us',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                        radius: 60,
                        backgroundColor: Color(0xFF262626),
                        child: Image.asset('assets/men.png')),
                  ],
                ),
                // Container(
                //   width: MediaQuery.sizeOf(context).width - 250,
                //   child: TextField(
                //     decoration: InputDecoration(
                //         hintText: 'Username',
                //         hintStyle: TextStyle(
                //             color: Colors.white,
                //             fontSize: 18,
                //             fontWeight: FontWeight.w700),
                //         suffixIcon: Icon(
                //           Icons.mode_edit_outline_outlined,
                //           color: Colors.white,
                //         ),
                //         border: InputBorder.none),
                //   ),
                // ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Louis Rosenfeld',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'Account',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    // Get.to(MyWatchlist());
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width - 25,
                    height: 52,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text(
                              'Edit Profile',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                GestureDetector(
                  onTap: () {
                    // Get.to(Settings());
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width - 25,
                    height: 52,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.lock_clock_outlined,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text(
                              'Change Password',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width - 25,
                  height: 52,
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.group,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            'Contact Admin',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    // Get.to(Contacts());
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width - 25,
                    height: 52,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.help_outline,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text(
                              'Help center',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'Other',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    // Get.to(Blogging());
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width - 25,
                    height: 52,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.shield_outlined,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text(
                              'Privacy Policy',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                GestureDetector(
                  onTap: () {
                    // Get.to(OnboardingScreen());
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width - 25,
                    height: 52,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.exit_to_app,
                            color: Colors.red,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Text(
                              'Log Out',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
