import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionHeader extends StatelessWidget {
  final String sectionTitle;
  final bool separator;

  SectionHeader(this.sectionTitle, {this.separator});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          sectionTitle,
          style: GoogleFonts.lato(
              fontSize: 16, color: Colors.white, letterSpacing: 1.4),
        ),
        SizedBox(height: 8,),
        separatorGreen(),
        SizedBox(height: 8,),
        separator ? separatorWhite() : Container()
      ],
    );
  }

  Container separatorGreen() {
    return Container(
        color: Colors.green.shade700,
        width: 48,
        height: 4,
      );
  }

  separatorWhite() {
    return Container(
      color: Colors.white30,
      height: 1,
    );
  }
}
