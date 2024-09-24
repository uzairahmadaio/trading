import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tradingapp/screens/Home/home.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
                        child: Icon(Icons.arrow_back, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text('Search',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width - 25,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey, width: 0.3),
                    color: Color(0xff5E687),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 15, top: 10),
                      hintText: 'Search Here',
                      // suffixIcon: Icon(Icons.search),
                      // suffixIconColor: Colors.grey,
                      hintStyle: TextStyle(
                          color: const Color.fromARGB(255, 212, 211, 211)),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text('Forex',
                        style: TextStyle(color: Colors.white, fontSize: 13))
                  ],
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
                Row(
                  children: [
                    Text('Crypto',
                        style: TextStyle(color: Colors.white, fontSize: 10))
                  ],
                ),
                SizedBox(
                  height: 10,
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
              ],
            ),
          ))
        ],
      ),
    );
  }
}
