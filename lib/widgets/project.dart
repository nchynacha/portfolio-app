import 'package:flutter/material.dart';
import 'package:portfolio/screens/projcetmobile.dart';

import 'package:portfolio/screens/projectweb.dart';

import 'package:portfolio/widgets/responsive.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktopScreen: ProjectWeb(),
      tabletScreen: ProjectMobile(),
      mobileBase: ProjectMobile(),
    );
  }
}
