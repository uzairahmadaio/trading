import 'package:flutter/material.dart';
import 'package:tradingapp/screens/Home/home.dart';

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
                      child: Icon(Icons.add, color: Colors.white),
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
                  height: 100,
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
