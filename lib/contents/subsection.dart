import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubSection extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;

  SubSection({this.text1, this.text2, this.text3, this.text4});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          text1,
          style: GoogleFonts.lato(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        text2 != null && text2.isNotEmpty
            ? Text(
                text2,
                style: GoogleFonts.lato(color: Colors.white38, fontSize: 14),
              )
            : Container(),
        SizedBox(
          height: 10,
        ),
        Text(
          text3,
          style: GoogleFonts.lato(color: Colors.white54, fontSize: 12),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text4,
          style: GoogleFonts.lato(color: Colors.white, fontSize: 14),
        )
      ],
    );
  }
}
