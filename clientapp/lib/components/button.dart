import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final String title;
  final Color colour;
  final Function onpressed;
  Button({this.title, this.colour, @required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.pink[300],
      ),
      height: 22,
      width: 71,
      child: GestureDetector(
        onTap: () {},
        child: Padding(
          padding: EdgeInsets.only(top: 5, bottom: 5, left: 6.9),
          child: Container(
            child: Text(
              "APPLY NOW",
              style: GoogleFonts.raleway(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
