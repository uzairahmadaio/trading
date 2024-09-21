import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
    required this.text,
  });
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 330,
        height: 55,
        decoration: ShapeDecoration(
          color: Color(0xFF1ABDCD),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 20.46,
              // fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              // height: 0
            ),
          ),
        ),
      ),
    );
  }
}
