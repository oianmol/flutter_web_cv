import 'package:anmolverma_in/contents/section_header.dart';
import 'package:anmolverma_in/contents/subsection.dart';
import 'package:flutter/material.dart';

class ResumeExperience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(sectionTitle: "EXPERIENCE (11+ years)", separator: true),
        atoms(),
        SizedBox(
          height: 20,
        ),
        tray(),
        SizedBox(
          height: 20,
        ),
        deliveryHero(),
        SizedBox(
          height: 20,
        ),
        separatorWhite(),
        mutualmobileArch(),
        SizedBox(
          height: 20,
        ),
        separatorWhite(),
        SizedBox(
          height: 10,
        ),
        mutualmobileTechLead(),
        SizedBox(
          height: 20,
        ),
        separatorWhite(),
        SizedBox(
          height: 10,
        ),
        mutualmobile(),
        SizedBox(
          height: 20,
        ),
        separatorWhite(),
        SizedBox(
          height: 10,
        ),
        trestor(),
        SizedBox(
          height: 20,
        ),
        separatorWhite(),
        SizedBox(
          height: 10,
        ),
        xicom(),
        SizedBox(
          height: 20,
        ),
        separatorWhite(),
        SizedBox(
          height: 10,
        ),
        svimtech(),
      ],
    );
  }
  
  SubSection deliveryHero() {
    return SubSection(
          text1: "Android Engineer @DeliveryHeroSE",
          text2: "DECEMBER 2022 - APRIL 2023",
          text3: "Berlin, Germany",
          text4:
              "♥ Wrote features for the vendor app with JUnit, E2E and UI tests.\n♥ Helped migrate features from RxJava to Kotlin Coroutines.\n♥ Reduced flakiness in UI Tests by introducing Idling Resources.\n♥ Introduced multi-module architecture by extracting build logic using the gradle api.",
          imgAsset: "deliveryhero.jpeg");
  }


  SubSection tray() {
    return SubSection(
          text1: "Principal Engineer @Tray",
          text2: "JUNE 2023 - JULY 2024",
          text3: "REMOTE",
          text4:
              """
      Refactored and rewrote existing apps from Java to Kotlin, improved code correctness and maintainability.
Introduced a culture of writing unit tests and instrumentation tests, increasing test coverage by 40% and reduced bugs in the process.
Trained and guided the team in writing code with SOLID principles, improving code quality and team efficiency.
Actively reviewed PRs, ensuring code quality and reducing code review time.
Developed a Custom Device Farm for Android Tests with test sharding support, reducing testing costs by 50% and improving test efficiency.
      """,
          imgAsset: "tray.png");
  }

  SubSection atoms() {
    return SubSection(
          text1: "Lead Mobile Engineer @Atoms.",
          text2: "Present",
          text3: "REMOTE",
          text4:
              """
      Built  the Mobile app from scratch for the award winning book Atomic Habits, The mobile app was  written with Jetpack Compose + Kotlin + Coroutines. Good test coverage for  unit tests, also UI tests  making sure that the UI state is updated correctly.
The app is built with multiple feature modules and has a Public API approach where the domain/feature  layer is separate allowing features  to become stable and has nothing to worry about how data sources change affects the feature and UI modeling.
      """,
          imgAsset: "atoms.png");
  }

  SubSection mutualmobileArch() {
    return SubSection(
          text1: "Android Architect @MutualMobile",
          text2: "Present",
          text3: "Aug 2020 – Present | Remote Work",
          text4:
              "♥ Lead a team of 15+ Android engineers\n♥ Helped with Code Reviews\n♥ Mentored Interns and Associates.\n♥ Actively developed Android and Flutter Applications.",
          imgAsset: "mutualmobile.jpeg");
  }

  SubSection mutualmobileTechLead() {
    return SubSection(
          text1: "Technical Lead @MutualMobile",
          text2: "~ 1 Year",
          text3: "Sep 2019 – Aug 2020 | Hyderabad,IN",
          text4: "♥ Lead a team of 15+ Android engineers\n"
              "♥ Helped with Code Reviews\n"
              "♥ Mentored Interns and Associates.\n"
              "♥ Actively developed Android and Flutter Applications.",
          imgAsset: "mutualmobile.jpeg");
  }

  SubSection mutualmobile() {
    return SubSection(
          text1: "Senior Android Engineer @MutualMobile",
          text2: "~ 3 years",
          text3: "Nov 2016 – Sep 2019 | Hyderabad,IN",
          text4:
              "♥ Designed and built advanced applications for the Android platform\n"
              "♥ Collaborated with cross-functional teams to define, design, and ship new features.\n"
              "♥ Worked with outside data sources and API’s\n"
              "♥ Unit-tested code for robustness, including edge cases, usability, and general reliability.\n"
              "♥ Worked on bug fixing and improving application performance.\n"
              "♥ Continuously discovered, evaluated, and implemented new technologies to maximize development efficiency.",
          imgAsset: "mutualmobile.jpeg");
  }

  SubSection svimtech() {
    return SubSection(
          text1: "Android Developer @SvimTech Software Pvt. Ltd.",
          text2: "~ 7 Months",
          text3: "Feb 2014 – Aug 2014 | Mohali,IN",
          text4:
              "Mobile App developer for products deployed with SalesForce.",
          imgAsset: "svimtech.png");
  }

  SubSection xicom() {
    return SubSection(
          text1: "Android Developer @Xicom Technologies",
          text2: "~ 2 Years",
          text3: "September 2014 – July 2016 | Chandigarh,IN",
          text4: "",
          imgAsset: "xicom.png");
  }

  SubSection trestor() {
    return SubSection(
          text1: "Senior Android Developer @Trestor",
          text2: "~ 4 Months",
          text3: "Jul 2016 – Oct 2016 | Chandigarh,IN",
          text4:
              "Trest : The Global Value Protocol\nTrestor is an India based blockchain startup which has created “Trest” ; a secure, digital, store of value. Using the power of Trestor's blockchain and our decentralised network of trustless nodes 'Trests' can be transferred directly from person to person anywhere across the globe. There is zero transfer fees and Trests are transferred within seconds, accounts can never be frozen and there are no paperwork or limits!",
          imgAsset: "trestor.png");
  }
}
