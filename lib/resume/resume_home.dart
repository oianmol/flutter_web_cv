import 'package:anmolverma_in/resume/resume_container.dart';
import 'package:flutter/material.dart';

class ResumeHome extends StatefulWidget {
  @override
  _ResumeHomeState createState() => _ResumeHomeState();
}

class _ResumeHomeState extends State<ResumeHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      color: Colors.green.shade900,
      child: ResumeContainer(),
    ),);
  }
}
