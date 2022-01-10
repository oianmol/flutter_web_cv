import 'package:anmolverma_in/contents/section_header.dart';
import 'package:anmolverma_in/contents/subsection.dart';
import 'package:flutter/material.dart';

class ResumeExtras extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionHeader(
          sectionTitle: "VALUABLE SKILLS",
          separator: false,
        ),
        SubSection(
            text1: "♥ SOLID Principles\n"
                "♥ Design Patterns\n"
                "♥ Clean Code\n"
                "♥ Kotlin Multiplatform, Jetpack Compose, Flutter",
            text2: "",
            text3: "",
            text4: "",
            linkPreview: null),
        SizedBox(
          height: 20,
        ),
        SectionHeader(
          sectionTitle: "TECHNICAL SKILLS & LIBRARIES",
          separator: false,
        ),
        SubSection(
            text1: "♥ Java, Kotlin, Dart\n"
                "♥ Android Studio,VS code, Xcode\n"
                "♥ Github , Stash, Bitbucket\n"
                "♥ Android SDK/NDK, iOS, Flutter, TornadoFX\n"
                "♥ HTTP/HTTPS REST services , GRPC, Sockets\n"
                "♥ Retrofit, GSON, Glide, RxJava, Dagger, Data Binding, OkHttp\n"
                "♥ OpenCV, FFmpeg , Native Camera, TagLib,Exiv2\n"
                "♥ Google-APIs, Facebook Graph-API, Twitter-APIs\n"
                "♥ SOLID Principles, MVP/MVVM, Design Patterns, Clean Code\n",
            text2: "",
            text3: "",
            text4: "",
            linkPreview: null),
        SizedBox(
          height: 20,
        ),
        SectionHeader(
          sectionTitle: "EDUCATION",
          separator: false,
        ),
        SubSection(
          text1: "Indo Global College Of Engineering",
          text2: "B.TECH in CSE",
          text3: "2010 - 2014",
          text4: "",
        ),
        SectionHeader(
          sectionTitle: "CERTIFICATIONS",
          separator: false,
        ),
        SubSection(
            text1:
                "End-to-End Machine Learning with TensorFlow on GCP by Google Cloud on Coursera",
            text2: "Coursera",
            text3: "",
            text4: "",
            linkPreview:
                "https://www.coursera.org/account/accomplishments/certificate/LKGULZJ7KXJJ"),
        separatorWhite(),
        SubSection(
            text1: "Associate Android Developer",
            text2: "Google Developers",
            text3: "",
            text4: "",
            linkPreview: "http://bcert.me/skezstkn"),
        separatorWhite(),
        SubSection(
            text1:
                "Cloud Hero Warm Up: Artificial Intelligence and Machine Learning",
            text2: "Qwiklabs",
            text3: "",
            text4: "",
            linkPreview:
                "https://google.qwiklabs.com/public_profiles/679234c8-a3ce-40fd-b7d7-3bf12de425b5"),
        separatorWhite(),
        SubSection(
            text1: "Baseline Infrastructure",
            text2: "Qwiklabs",
            text3: "",
            text4: "",
            linkPreview:
                "https://www.qwiklabs.com/public_profiles/679234c8-a3ce-40fd-b7d7-3bf12de425b5"),
        separatorWhite(),
        SubSection(
            text1: "Cloud Architecture",
            text2: "Qwiklabs",
            text3: "",
            text4: "",
            linkPreview:
                "https://www.qwiklabs.com/public_profiles/679234c8-a3ce-40fd-b7d7-3bf12de425b5"),
        separatorWhite(),
        SizedBox(
          height: 20,
        ),


      ],
    );
  }
}
