import 'package:flutter/material.dart';
import 'package:portfolio/screens/contactmobile.dart';
import 'package:portfolio/screens/contactweb.dart';
import 'package:portfolio/widgets/responsive.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktopScreen: ContactWeb(),
      tabletScreen: ContactMobile(),
      mobileBase: ContactMobile(),
    );
  }
}
