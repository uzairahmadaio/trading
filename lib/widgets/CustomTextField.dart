import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    // required this.onTap,
    required this.text,
    required this.text1,
    // required this.icon,
  });
  final String text;
  final String text1;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  // final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 32.0),
              child: Text(
                widget.text,
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  // letterSpacing: 0.20,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 23),
          height: 55,
          decoration: ShapeDecoration(
            color: Color(0xff5E687),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  // width: 2,
                  color: Colors.grey),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: widget.text1,
              hintStyle: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.bold,
                // height: 0,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
