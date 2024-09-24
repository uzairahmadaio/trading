import 'package:flutter/material.dart';
import 'package:tradingapp/screens/theme/theme.dart';

class Mytrade extends StatefulWidget {
  const Mytrade({super.key});

  @override
  State<Mytrade> createState() => _MytradeState();
}

class _MytradeState extends State<Mytrade> {
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
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('My Trades',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          // Top Buttons
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _buildButton('Open orders'),
                              SizedBox(width: 10),
                              _buildButton('Close orders'),
                            ],
                          ),
                          SizedBox(height: 20),
                          // Trade Info
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildTradeRow('Entry', '0.826251'),
                                _buildTradeRow('Balance', '\$12',
                                    color: Colors.blue),
                                _buildTradeRow('Equity', '18'),
                                _buildTradeRow('Margin', '18'),
                                _buildTradeRow('TP', '0.641521',
                                    color: Colors.green),
                                _buildTradeRow('SL', '0.81512',
                                    color: Colors.red),
                                GestureDetector(
                                  onTap: () {
                                    // Handle button press here
                                  },
                                  child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 16),
                                    decoration: BoxDecoration(
                                      color: kPrimaryColor,
                                      borderRadius: BorderRadius.circular(
                                          8), // Optional: Add rounded corners
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Close Trade',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors
                                              .white), // Ensure text is visible on dark background
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          // Close Trade Button
                          Container(),
                        ],
                      ),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
    ;
  }
}

Widget _buildButton(String text) {
  return Container(
    width: 150,
    height: 50,
    decoration: BoxDecoration(
      color: kPrimaryColor,
      borderRadius: BorderRadius.circular(8), // Optional: Add rounded corners
    ),
    alignment: Alignment.center,
    child: Padding(
      padding: const EdgeInsets.all(3.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.history,
            color: Colors.white,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 18,
                color:
                    Colors.white), // Ensure text is visible on dark background
          ),
        ],
      ),
    ),
  );
}

Widget _buildTradeRow(String title, String value, {Color? color}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(color: Colors.white, fontSize: 16)),
        Text(value,
            style: TextStyle(color: color ?? Colors.white, fontSize: 16)),
      ],
    ),
  );
}
