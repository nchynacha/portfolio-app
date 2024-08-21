import 'package:flutter/material.dart';
import 'package:portfolio/widgets/project.dart';
import 'package:portfolio/screens/aboutmemobile.dart';
import 'package:portfolio/screens/contactmobile.dart';
import 'package:portfolio/screens/home_mobile.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/skills.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int index = 0;
  final screens = [
    HomeMobile(),
    AboutMeMobile(),
    Skills(),
    ContactMobile(),
    Project(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBar(
        height: 60,
        backgroundColor: kWhiteColor,
        selectedIndex: index,
        onDestinationSelected: (index) => setState(() => this.index = index),
        destinations: [
          NavigationDestination(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
            selectedIcon: Icon(Icons.home),
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'About Me',
            selectedIcon: Icon(Icons.person),
          ),
          NavigationDestination(
            icon: Icon(Icons.computer),
            label: 'Skills',
            selectedIcon: Icon(Icons.computer),
          ),
          NavigationDestination(
            icon: Icon(Icons.contact_mail),
            label: 'Contact',
            selectedIcon: Icon(Icons.contact_mail),
          ),
          NavigationDestination(
            icon: Icon(Icons.auto_awesome_outlined),
            label: 'Project',
            selectedIcon: Icon(Icons.auto_awesome_outlined),
          )
        ],
      ),
    );
  }
}
