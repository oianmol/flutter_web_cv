import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NameView extends StatelessWidget {
  final String name;

  NameView(this.name);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: GoogleFonts.lato(
          color: Colors.white, fontSize: 44, fontWeight: FontWeight.bold),
    );
  }
}
