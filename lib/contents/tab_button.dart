import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabButton extends StatelessWidget {
  final Function onPressed;
  final String titleText;

  TabButton({this.onPressed, this.titleText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: buttonStyle(),
      child: Text(
        titleText,
        style: GoogleFonts.lato(
            color: Colors.white, letterSpacing: 1),
      ),
    );
  }

  ButtonStyle buttonStyle() {
    return ElevatedButton.styleFrom(
      onPrimary: Colors.white,
      primary: Colors.green,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(28.0),
      ),
    );
  }
}
