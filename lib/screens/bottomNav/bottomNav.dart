// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:tradingapp/screens/Home/home.dart';
import 'package:tradingapp/screens/Market/market.dart';
import 'package:tradingapp/screens/MyTrades/mytrade.dart';
import 'package:tradingapp/screens/Portfolio/portfolio.dart';
import 'package:tradingapp/screens/Wallet/wallets.dart';

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
      Portfolio(),
      Market(),
      Home(),
      Mytrade(),
      Wallets()
    ];
    return Scaffold(
      extendBody: true,
      body: pages[currentIndex], // Display the current page based on index

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Color(0xFF051718), borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: BottomBarDivider(
          items: [
            TabItem(
              icon: currentIndex == 0
                  ? Icons.account_balance_wallet_outlined
                  : Icons.account_balance_wallet_outlined,
              title: 'Portfollio',
            ),
            TabItem(
              icon: currentIndex == 1
                  ? Icons.account_balance
                  : Icons.account_balance,
              title: 'Market',
            ),
            TabItem(
              icon:
                  currentIndex == 2 ? Icons.home_outlined : Icons.home_outlined,
              title: 'Home',
            ),
            TabItem(
              icon: currentIndex == 3 ? Icons.article : Icons.article,
              title: 'My Trades',
            ),
            TabItem(
              icon: currentIndex == 4 ? Icons.wallet : Icons.wallet,
              title: 'Wallet',
            ),
          ],
          backgroundColor: Colors.transparent,
          color: Colors.grey,
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
