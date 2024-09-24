import 'package:flutter/material.dart';
import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:tradingapp/screens/MyTrades/mytrade.dart';
import 'package:tradingapp/screens/Onborading/Login.dart';
import 'package:tradingapp/screens/Onborading/Logincode.dart';
import 'package:tradingapp/screens/Onborading/Onborading1.dart';
import 'package:tradingapp/screens/Onborading/Onborading2.dart';
import 'package:tradingapp/screens/Onborading/SignUp.dart';
import 'package:tradingapp/screens/Portfolio/Contact.dart';
import 'package:tradingapp/screens/Portfolio/privacy.dart';
import 'package:tradingapp/screens/Portfolio/term.dart';
import 'package:tradingapp/screens/Wallet/deposit.dart';
import 'package:tradingapp/screens/Wallet/preview.dart';
import 'package:tradingapp/screens/Wallet/transactionhistory.dart';
import 'package:tradingapp/screens/Wallet/wallets.dart';
import 'package:tradingapp/screens/Wallet/withdraw.dart';
=======
>>>>>>> 479155697ed616a0c82efb19a6cc84e3c2c0d2ac
import 'package:tradingapp/screens/bottomNav/bottomNav.dart';
import 'package:tradingapp/screens/splash/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
<<<<<<< HEAD
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Contact(),
=======
      home: BottomNavScreen(),
>>>>>>> 479155697ed616a0c82efb19a6cc84e3c2c0d2ac
    );
  }
}
