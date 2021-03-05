import 'package:anmolverma_in/contents/tab_button.dart';
import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

class UserTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      debugPrint("Max width is ${constraints.maxWidth}");
      var axisCount = 4;

      if (constraints.maxWidth < 250) {
        axisCount = 1;
      } else if (constraints.maxWidth < 335) {
        axisCount = 2;
      } else if (constraints.maxWidth < 400) {
        axisCount = 3;
      }
      return GridView.count(
        crossAxisCount: axisCount,
        primary: false,
        padding: EdgeInsets.symmetric(vertical: 20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 15,
        childAspectRatio: 3,
        children: [website(), linkedIn(), email(), phone()],
      );
    });
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
