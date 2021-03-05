import 'package:anmolverma_in/contents/section_header.dart';
import 'package:anmolverma_in/contents/subsection.dart';
import 'package:flutter/material.dart';

class ResumeExperience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(sectionTitle: "EXPERIENCE", separator: true),
        SubSection(
            text1: "Android Architect @MutualMobile",
            text2: "",
            text3: "Aug 2020 – Present | Remote Work",
            text4:
                "* Lead a team of 15+ Android engineers\n* Helped with Code Reviews\n* Mentored Interns and Associates.\n* Actively developed Android and Flutter Applications."),
        SubSection(
            text1: "Technical Lead @MutualMobile",
            text2: "",
            text3: "Sep 2019 – Aug 2020 | Hyderabad,IN",
            text4:
                "* Lead a team of 15+ Android engineers\n* Helped with Code Reviews\n* Mentored Interns and Associates.\n* Actively developed Android and Flutter Applications."),
      ],
    );
  }
}
