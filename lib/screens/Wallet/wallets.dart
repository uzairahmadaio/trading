// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tradingapp/screens/Notification/notification.dart';
import 'package:tradingapp/screens/Profile/profile.dart';
import 'package:tradingapp/screens/Wallet/deposit.dart';
import 'package:tradingapp/screens/Wallet/transactionhistory.dart';
import 'package:tradingapp/screens/Wallet/withdraw.dart';

class Wallets extends StatefulWidget {
  const Wallets({super.key});

  @override
  State<Wallets> createState() => _WalletsState();
}

class _WalletsState extends State<Wallets> {
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
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              width: 130,
                              child: Text(
                                'Hala',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF79869B),
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              width: 130,
                              child: Text(
                                'Louis Rosenfeld',
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.to(Notifications());
                              },
                              child: Icon(
                                EvaIcons.bellOutline,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.to(Profile());
                              },
                              child: Image.asset(
                                'assets/men.png',
                                width: 50,
                                height: 50,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 120,
                          child: Text(
                            'Wellet Balance',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF79869B),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 120,
                              child: Text(
                                "\$ 134,876",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                            Icon(
                              EvaIcons.eyeOutline,
                              size: 28,
                              color: Color(0xFF545454),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(Deposit());
                      },
                      child: Container(
                        width: 150,
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color.fromARGB(255, 226, 226, 226)
                              .withOpacity(0.1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Color(0xFF22B495),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Icon(
                                Icons.arrow_downward,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Deposit',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(Withdraw());
                      },
                      child: Container(
                        width: 150,
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color.fromARGB(255, 226, 226, 226)
                              .withOpacity(0.1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Color(0xFF22B495),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Icon(
                                Icons.arrow_upward,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Withdraw',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(Transaction());
                  },
                  child: Row(
                    children: [
                      Text(
                        'Transaction History',
                        style: TextStyle(
                            fontSize: 19,
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  minTileHeight: 25,
                  leading: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Color(0xFF22B495),
                        borderRadius: BorderRadius.circular(25)),
                    child: Icon(
                      Icons.arrow_downward,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    'Deposit',
                    style: TextStyle(
                        fontSize: 17,
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '10:00 am EST',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF79869B),
                        fontWeight: FontWeight.w600),
                  ),
                  trailing: Text(
                    "\$134,876",
                    style: TextStyle(
                        fontSize: 22,
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w800),
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.blue,
                ),
                ListTile(
                  minTileHeight: 25,
                  leading: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Color(0xFF22B495),
                        borderRadius: BorderRadius.circular(25)),
                    child: Icon(
                      Icons.arrow_downward,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    'Deposit',
                    style: TextStyle(
                        fontSize: 17,
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '10:00 am EST',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF79869B),
                        fontWeight: FontWeight.w600),
                  ),
                  trailing: Text(
                    "\$134,876",
                    style: TextStyle(
                        fontSize: 22,
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w800),
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.blue,
                ),
                ListTile(
                  minTileHeight: 25,
                  leading: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Color(0xFF22B495),
                        borderRadius: BorderRadius.circular(25)),
                    child: Icon(
                      Icons.arrow_downward,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    'Deposit',
                    style: TextStyle(
                        fontSize: 17,
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '10:00 am EST',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF79869B),
                        fontWeight: FontWeight.w600),
                  ),
                  trailing: Text(
                    "\$134,876",
                    style: TextStyle(
                        fontSize: 22,
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w800),
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.blue,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Positions',
                      style: TextStyle(
                          fontSize: 19,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                ListTile(
                  leading: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Color(0xFF22B495),
                        borderRadius: BorderRadius.circular(25)),
                    child: Icon(
                      Icons.arrow_downward,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    'Long XAG/USD',
                    style: TextStyle(
                        fontSize: 17,
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '10:00 am EST',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF79869B),
                        fontWeight: FontWeight.w600),
                  ),
                  trailing: Text(
                    "\$134,876",
                    style: TextStyle(
                        fontSize: 22,
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w800),
                  ),
                ),
                ListTile(
                  leading: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        color: Color(0xFF22B495),
                        borderRadius: BorderRadius.circular(25)),
                    child: Icon(
                      Icons.arrow_downward,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    'Long XAG/USD',
                    style: TextStyle(
                        fontSize: 17,
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '10:00 am EST',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF79869B),
                        fontWeight: FontWeight.w600),
                  ),
                  trailing: Text(
                    "\$134,876",
                    style: TextStyle(
                        fontSize: 22,
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w800),
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
