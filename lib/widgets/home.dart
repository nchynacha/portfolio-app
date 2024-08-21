import 'package:flutter/material.dart';
import 'package:portfolio/screens/home_web.dart';
import 'package:portfolio/widgets/navigation_menu.dart';
import 'package:portfolio/widgets/responsive.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktopScreen: HomeWeb(),
      tabletScreen: NavigationMenu(),
      mobileBase: NavigationMenu(),
    );
  }
}
