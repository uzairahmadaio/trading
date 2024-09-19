// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:tradingapp/screens/Home/home.dart';
import 'package:tradingapp/screens/Market/market.dart';
import 'package:tradingapp/screens/Portfolio/portfolio.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      // Add your actual pages here
      Home(),
      Market(),
      Portfolio(),
    ];
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: pages[currentIndex], // Display the current page based on index

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Color(0xFF0E1629), borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.only(left: 10, right: 10),
        child: BottomBarDivider(
          items: [
            TabItem(
              icon: currentIndex == 0 ? EvaIcons.home : EvaIcons.homeOutline,
              title: 'Portfollio',
            ),
            TabItem(
              icon: currentIndex == 1 ? EvaIcons.flag : EvaIcons.flagOutline,
              title: 'Market',
            ),
            TabItem(
              icon: currentIndex == 2 ? EvaIcons.home : EvaIcons.home,
              title: 'Home',
            ),
            TabItem(
              icon: currentIndex == 3
                  ? EvaIcons.settings2
                  : EvaIcons.settingsOutline,
              title: 'My Trades',
            ),
            TabItem(
              icon: currentIndex == 3
                  ? EvaIcons.settings2
                  : EvaIcons.settingsOutline,
              title: 'Wallet',
            ),
          ],
          backgroundColor: Color.fromARGB(75, 70, 114, 181),
          color: Colors.white,
          colorSelected: Colors.white,
          indexSelected: currentIndex,
          onTap: (int index) => setState(() {
            currentIndex = index;
          }),
        ),
      ),
    );
  }
}
