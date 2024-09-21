import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Market extends StatefulWidget {
  const Market({super.key});

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Column(
                          children: [
                            Divider(
                              color: Color(0xFF374F60),
                              thickness: 0.5,
                            ),
                            Row(
                              children: [
                                Container(
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
                                  child: Icon(Icons.arrow_back,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Row(
                                  children: [
                                    Image.asset('assets/us.png',
                                        height: 24), // Add your flag assets
                                    SizedBox(width: 8),
                                    Text(
                                      "USD",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(width: 4),
                                    Icon(Icons.compare_arrows,
                                        color: Colors.white),
                                    SizedBox(width: 4),
                                    Text(
                                      "JPY",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    SizedBox(width: 8),
                                    Image.asset('assets/us.png', height: 24),
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.share_outlined,
                                        color: Colors.white),
                                    Icon(Icons.star, color: Colors.yellow),
                                  ],
                                ),
                              ],
                            ),
                            Divider(
                              color: Color(0xFF374F60),
                              thickness: 0.5,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  '09:00 AM',
                                  style: TextStyle(color: Colors.white70),
                                ),
                                Text(
                                  '20% Sell',
                                  style: TextStyle(color: Colors.redAccent),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Current Trend',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  '+12.5% (24h)',
                                  style: TextStyle(
                                      color: Colors.greenAccent, fontSize: 16),
                                ),
                                SizedBox(height: 5),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '02:00 PM',
                                  style: TextStyle(color: Colors.white70),
                                ),
                                Text(
                                  '60% Buy',
                                  style: TextStyle(color: Colors.greenAccent),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 3,
                              width: 50,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 3,
                              width: 250,
                              color: Colors.greenAccent,
                            ),
                          ],
                        ),
                        // Buy/Sell Buttons
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.white
                                            .withOpacity(0.2), // Shadow color
                                        spreadRadius: 2, // Spread radius
                                        blurRadius: 5, // Blur radius
                                        offset: Offset(0,
                                            2), // Shadow position: x(horizontal), y(vertical)
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.red),
                                width: MediaQuery.sizeOf(context).width * 0.3,
                                child: Center(
                                  child: Text(
                                    'SELL 140.23',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              )),
                              SizedBox(width: 10),
                              Expanded(
                                  child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white
                                          .withOpacity(0.2), // Shadow color
                                      spreadRadius: 2, // Spread radius
                                      blurRadius: 5, // Blur radius
                                      offset: Offset(0,
                                          2), // Shadow position: x(horizontal), y(vertical)
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.green,
                                ),
                                width: MediaQuery.sizeOf(context).width * 0.3,
                                child: Center(
                                  child: Text(
                                    'BUY 140.23',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              )),
                            ],
                          ),
                        )
                      ])))
        ],
      ),
    );
  }
}
