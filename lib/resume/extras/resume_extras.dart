import 'package:anmolverma_in/contents/section_header.dart';
import 'package:anmolverma_in/contents/subsection.dart';
import 'package:flutter/material.dart';

class ResumeExtras extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(
          sectionTitle: "EDUCATION",
          separator: false,
        ),
        SubSection(
          text1: "Indo Global College Of Engineering",
          text2: "B.TECH in CSE",
          text3: "",
          text4: "",
        ),
        SectionHeader(
          sectionTitle: "AWARDS",
          separator: false,
        ),
        SectionHeader(
          sectionTitle: "TOOLS & SKILLS",
          separator: false,
        ),
        SectionHeader(
          sectionTitle: "MUSIC & INTERESTS",
          separator: false,
        )
      ],
    );
  }
}
