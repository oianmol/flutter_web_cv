import 'package:anmolverma_in/contents/tab_button.dart';
import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

class UserTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TabButton(
              onPressed: () {
                _launchURL("https://anmolverma.in");
              },
              titleText: "WEBSITE"),
          TabButton(
              onPressed: () {
                _launchURL("https://www.linkedin.com/in/anmolverma92/");
              },
              titleText: "LINKEDIN"),
          TabButton(
              onPressed: () {
                handleEmailClicked();
              },
              titleText: "EMAIL"),
          TabButton(
              onPressed: () {
                launch("tel://+918284866938");
              },
              titleText: "CALL"),
          Spacer()
        ],
      ),
      width: MediaQuery.of(context).size.width,
    );
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
