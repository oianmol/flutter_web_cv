import 'package:anmolverma_in/contents/tab_button.dart';
import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

class UserTabs extends StatelessWidget {
  final BoxConstraints constraints;

  UserTabs(this.constraints);

  @override
  Widget build(BuildContext context) {
    int axisCount = getAxisCount(constraints);
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: axisCount,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 2),
      delegate: SliverChildListDelegate(
        [website(), linkedIn(), email(), phone()],
      ),
    );
  }

  int getAxisCount(BoxConstraints constraints) {
    var axisCount = constraints.maxWidth ~/ 105;
    if (axisCount == 0) {
      axisCount = 1;
    }
    return axisCount;
  }

  TabButton phone() {
    return TabButton(
        onPressed: () {
          launch("tel://+918284866938");
        },
        titleText: "CALL");
  }

  TabButton email() {
    return TabButton(
        onPressed: () {
          handleEmailClicked();
        },
        titleText: "EMAIL");
  }

  TabButton linkedIn() {
    return TabButton(
        onPressed: () {
          _launchURL("https://www.linkedin.com/in/anmolverma92/");
        },
        titleText: "LINKEDIN");
  }

  TabButton website() {
    return TabButton(
        onPressed: () {
          _launchURL("https://anmolverma.in");
        },
        titleText: "WEBSITE");
  }

  void handleEmailClicked() {
    final mailtoLink = Mailto(
      to: ['anmol.verma4@gmail.com'],
      subject: 'This is a test',
      body: 'This is a test',
    );
    // Convert the Mailto instance into a string.
    // Use either Dart's string interpolation
    // or the toString() method.
    launch('$mailtoLink');
  }

  void _launchURL(url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
}
