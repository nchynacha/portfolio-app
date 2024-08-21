import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget desktopScreen;
  final Widget? tabletScreen;
  final Widget? mobileBase;

  const Responsive(
      {super.key,
      required this.desktopScreen,
      this.tabletScreen,
      this.mobileBase});

  static bool isMobileBase(BuildContext context) {
    return MediaQuery.of(context).size.width < 375;
  }

  static bool isMobilePortrait(BuildContext context) {
    return MediaQuery.of(context).size.width < 480;
  }

  static bool isdesktopScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1199;
  }

  static bool istabletScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1024 &&
        MediaQuery.of(context).size.width <= 1199;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1199) {
          return desktopScreen;
        } else if (constraints.maxWidth <= 1199 &&
            constraints.maxWidth >= 1024) {
          return tabletScreen ?? desktopScreen;
        } else {
          return mobileBase ?? desktopScreen;
        }
      },
    );
  }
}
