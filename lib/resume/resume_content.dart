import 'package:anmolverma_in/contents/name_view.dart';
import 'package:anmolverma_in/contents/user_tabs.dart';
import 'package:anmolverma_in/resume/resume_extended_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ResumeContent extends StatefulWidget {
  @override
  _ResumeContentState createState() => _ResumeContentState();
}

class _ResumeContentState extends State<ResumeContent> {
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
}
