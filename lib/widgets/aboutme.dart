import 'package:flutter/material.dart';
import 'package:portfolio/screens/aboutmemobile.dart';
import 'package:portfolio/screens/aboutmeweb.dart';
import 'package:portfolio/widgets/responsive.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktopScreen: AboutMeWeb(),
      tabletScreen: AboutMeMobile(),
      mobileBase: AboutMeMobile(),
    );
  }
}
