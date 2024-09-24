import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tradingapp/screens/Home/home.dart';
import 'package:tradingapp/screens/Search/search.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
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
                    Text(
                      'Portfolio',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(Search());
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
                        child: Icon(Icons.add, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                WatchlistTile(
                  title: 'EURUSD',
                  subtitle: 'Euro / U.S. Dollar',
                  value: '1.0749',
                  change: '-0.0037 (-0.3440%)',
                  isPositive: false,
                ),
                SizedBox(
                  height: 10,
                ),
                WatchlistTile(
                  title: 'Tesla',
                  subtitle: 'Tesla.',
                  value: '139.3550',
                  change: '-0.0037 (-0.3440%)',
                  isPositive: true,
                ),
                SizedBox(
                  height: 10,
                ),
                WatchlistTile(
                  title: 'USDJPY',
                  subtitle: 'Euro / U.S. Dollar',
                  value: '139.3550',
                  change: '-0.0037 (-0.3440%)',
                  isPositive: false,
                ),
                SizedBox(
                  height: 200,
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
                              color:
                                  Colors.white.withOpacity(0.2), // Shadow color
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
              ],
            ),
          ))
        ],
      ),
    );
  }
}
