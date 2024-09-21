import 'package:flutter/material.dart';

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
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [],
            ),
          ))
        ],
      ),
    );
    ;
  }
}
