import 'package:anmolverma_in/resume/resume_content.dart';
import 'package:flutter/material.dart';

class ResumeContainer extends StatefulWidget {
  @override
  _ResumeContainerState createState() => _ResumeContainerState();
}

class _ResumeContainerState extends State<ResumeContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40),
      width: MediaQuery.of(context).size.width,
      decoration: decoration(),
      child: ResumeContent(),
    );
  }

  BoxDecoration decoration() {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        stops: [0.1, 0.5, 0.7, 0.9],
        colors: [
          Colors.grey.shade900,
          Colors.grey.shade800,
          Colors.grey.shade700,
          Colors.grey.shade600,
        ],
      ),
    );
  }
}
