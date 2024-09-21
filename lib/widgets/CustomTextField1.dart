import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class CustomTextField1 extends StatefulWidget {
  const CustomTextField1({
    required this.text,
    required this.text1,
    required this.icon,
  });
  final String text;
  final String text1;
  // final VoidCallback onTap;
  final IconData icon;

  @override
  State<CustomTextField1> createState() => _CustomTextField1State();
}

class _CustomTextField1State extends State<CustomTextField1> {
  bool isObsecure = true;
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
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  // width: 2,
                  color: Colors.grey),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: TextField(
            obscureText: isObsecure,
            decoration: InputDecoration(
              prefixIcon: Icon(
                widget.icon,
                color: Colors.white,
                size: 25,
              ),
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isObsecure = !isObsecure;
                    });
                  },
                  icon: Icon(
                    isObsecure ? EvaIcons.eyeOff2Outline : EvaIcons.eyeOutline,
                    color: Colors.grey,
                  )),
              hintText: widget.text1,
              hintStyle: TextStyle(
                color: Colors.white,
                fontSize: 15,
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
