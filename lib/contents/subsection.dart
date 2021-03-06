import 'package:flutter/material.dart';
import 'package:flutter_link_preview/flutter_link_preview.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class SubSection extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String linkPreview;

  SubSection(
      {this.text1, this.text2, this.text3, this.text4, this.linkPreview});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        text1 != null && text1.isNotEmpty
            ? Text(
                text1,
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )
            : Container(),
        text2 != null && text2.isNotEmpty
            ? Text(
                text2,
                style: GoogleFonts.lato(color: Colors.white38, fontSize: 14),
              )
            : Container(),
        SizedBox(
          height: 10,
        ),
        text3Widget(),
        SizedBox(
          height: 10,
        ),
        text4Widget(),
        linkPreviewWidget(),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  StatelessWidget text3Widget() {
    return text3 != null && text3.isNotEmpty
        ? Text(
            text3,
            style: GoogleFonts.lato(color: Colors.white54, fontSize: 12),
          )
        : Container();
  }

  StatelessWidget text4Widget() {
    return text4 != null && text4.isNotEmpty
        ? Text(
            text4,
            style: GoogleFonts.lato(color: Colors.white70, fontSize: 13),
          )
        : Container();
  }

  Widget linkPreviewWidget() {
    return linkPreview != null && linkPreview.isNotEmpty
        ? GestureDetector(
            child: FlutterLinkPreview(
              url: linkPreview,
              bodyStyle: TextStyle(
                color: Colors.white70,
              ),
              titleStyle: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              launch(linkPreview);
            },
          )
        : Container();
  }
}
