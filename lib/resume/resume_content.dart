import 'package:anmolverma_in/contents/name_view.dart';
import 'package:anmolverma_in/contents/user_tabs.dart';
import 'package:anmolverma_in/resume/resume_extended_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class ResumeContent extends StatefulWidget {
  @override
  _ResumeContentState createState() => _ResumeContentState();
}

class _ResumeContentState extends State<ResumeContent> {
  String headlineText =
      "A result oriented, customer-focused and articulate Engineer. Have worked on multiple projects from concept to completion over the past 8+ years. Skilled in problem solving, cross platform development. Vast experience architecting and building products leveraging the definitive experience and best practices in Mobile app development development.";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: resumeContent(),
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
    );
  }

  Widget resumeContent() {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NameView("Anmol Verma"),
              headline(),
              SizedBox(
                height: 20,
              ),
              UserTabs(constraints),
              SizedBox(
                height: 20,
              ),
              ResumeExtendedContent(constraints)
            ],
          ),
        );
      },
    );
  }

  Text headline() => Text(headlineText,
      style: GoogleFonts.lato(
          color: Colors.white, fontSize: 16, fontWeight: FontWeight.normal));
}
