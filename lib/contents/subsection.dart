import 'package:anmolverma_in/contents/linkpreview/link_preview.dart';
import 'package:anmolverma_in/contents/linkpreview/url_preview_fetcher.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:metadata_fetch/metadata_fetch.dart';
import 'package:url_launcher/url_launcher.dart';

class SubSection extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String linkPreview;
  final String imgAsset;

  SubSection(
      {this.text1,
      this.text2,
      this.text3,
      this.text4,
      this.linkPreview,
      this.imgAsset});

  @override
  Widget build(BuildContext context) {
    return imgAsset == null
        ? subsectionColumn()
        : Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 80,
                margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                child: Image(
                  image: AssetImage(path(imgAsset),package: 'anmolverma_in'),
                  fit: BoxFit.fill,
                ),
              ),
              Expanded(
                child: subsectionColumn(),
              )
            ],
          );
  }

  String path(str) {
    return 'assets/$str';
  }

  Column subsectionColumn() {
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
        ? linkTouchableWidget()
        : Container();
  }

  GestureDetector linkTouchableWidget() {
    return GestureDetector(
      child: linkFutureBuilder(),
      onTap: () {
        launch(linkPreview);
      },
    );
  }

  FutureBuilder<Metadata> linkFutureBuilder() {
    return FutureBuilder(
        future: UrlPreviewFetcher.fetch(linkPreview),
        builder: (context, snapshot) {
          print(snapshot.error);
          if (snapshot.hasData) {
            return linkPreviewWidgetBuilder(snapshot);
          } else {
            return linkClickableWidget();
          }
        });
  }

  GestureDetector linkClickableWidget() {
    return GestureDetector(
        child: Text("Link To Cert...",
            style: TextStyle(
                decoration: TextDecoration.underline, color: Colors.blue)),
        onTap: () {
          // do what you need to do when "Click here" gets clicked
          launch(linkPreview);
        });
  }

  LinkPreview linkPreviewWidgetBuilder(AsyncSnapshot snapshot) {
    return LinkPreview(
        linkPreview: linkPreview,
        metadata: snapshot.data,
        bodyStyle: TextStyle(
          color: Colors.white70,
        ),
        titleStyle: TextStyle(
          color: Colors.white70,
          fontWeight: FontWeight.bold,
        ));
  }
}
