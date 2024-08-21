import 'package:flutter/material.dart';
import 'package:portfolio/screens/skilillsweb.dart';
import 'package:portfolio/screens/skillsmobile.dart';
import 'package:portfolio/widgets/responsive.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktopScreen: SkillsWeb(),
      tabletScreen: SkillsMobile(),
      mobileBase: SkillsMobile(),
    );
  }
}
