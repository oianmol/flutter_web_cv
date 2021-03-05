import 'package:anmolverma_in/contents/name_view.dart';
import 'package:anmolverma_in/contents/user_tabs.dart';
import 'package:flutter/material.dart';

class ResumeContent extends StatefulWidget {
  @override
  _ResumeContentState createState() => _ResumeContentState();
}

class _ResumeContentState extends State<ResumeContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: resumeContent(),
      margin: EdgeInsets.symmetric(vertical: 24, horizontal: 36),
    );
  }

  Column resumeContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NameView("Anmol Verma"),
        UserTabs()
      ],
    );
  }
}
