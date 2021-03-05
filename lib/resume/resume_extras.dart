import 'package:anmolverma_in/contents/section_header.dart';
import 'package:flutter/material.dart';

class ResumeExtras extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader("EDUCATION", separator: false),
        SectionHeader("AWARDS", separator: false),
        SectionHeader("TOOLS & SKILLS", separator: false),
        SectionHeader("MUSIC & INTERESTS", separator: false)
      ],
    );
  }
}
