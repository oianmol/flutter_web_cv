import 'package:anmolverma_in/resume/experience/resume_experience.dart';
import 'package:anmolverma_in/resume/extras/resume_extras.dart';
import 'package:flutter/material.dart';

class ResumeExtendedContent extends StatelessWidget {
  final BoxConstraints constraints;

  ResumeExtendedContent(this.constraints);

  @override
  Widget build(BuildContext context) {
    if (constraints.maxWidth > 800) {
      return landscape();
    } else {
      return portrait();
    }
  }

  Column portrait() {
    return Column(
      children: [
        ResumeExperience(),
        SizedBox(height: 20,),
        ResumeExtras()
      ],
    );
  }

  Row landscape() {
    return Row(
      children: [
        Expanded(
          child: ResumeExperience(),
          flex: 2,
        ),
        SizedBox(width: 20,),
        Expanded(
          child: ResumeExtras(),
          flex: 1,
        )
      ],
    );
  }
}
