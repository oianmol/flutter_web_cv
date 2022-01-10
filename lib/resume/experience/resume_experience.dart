import 'package:anmolverma_in/contents/section_header.dart';
import 'package:anmolverma_in/contents/subsection.dart';
import 'package:flutter/material.dart';

class ResumeExperience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(sectionTitle: "EXPERIENCE (8+ years)", separator: true),
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
