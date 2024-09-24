import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class Transaction extends StatefulWidget {
  const Transaction({super.key});

  @override
  State<Transaction> createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
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
                Row(
                  children: [
                    Image.asset(
                      'assets/arrowleft.png',
                      width: 50,
                      height: 50,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      'Transaction History',
                      style: TextStyle(
                          fontSize: 22,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
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
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25),
                  child: Divider(
                    thickness: 2,
                    color: Colors.blue,
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
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25),
                  child: Divider(
                    thickness: 2,
                    color: Colors.blue,
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
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25),
                  child: Divider(
                    thickness: 2,
                    color: Colors.blue,
                  ),
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
