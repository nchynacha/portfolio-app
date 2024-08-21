import 'package:flutter/material.dart';
import 'package:portfolio/widgets/project.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/aboutme.dart';
import 'package:portfolio/widgets/contact.dart';
import 'package:portfolio/widgets/home.dart';
import 'package:portfolio/widgets/skills.dart';

class Drawerr extends StatefulWidget {
  const Drawerr({
    super.key,
  });

  @override
  State<Drawerr> createState() => _DrawerrState();
}

class _DrawerrState extends State<Drawerr> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kBackgroundColorLight,
      width: 200,
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.all(8),
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/watching.png')),
            ),
            child: Text(''),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: kPrimaryColor,
            ),
            title: const Text(
              'Home',
              style: TextStyle(color: kSecondaryColor),
            ),
            onTap: () {
              // Update the state of the app

              // Then close the drawer
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.person_2,
              color: kPrimaryColor,
            ),
            title: const Text(
              'About Me',
              style: TextStyle(color: kSecondaryColor),
            ),
            onTap: () {
              // Update the state of the app

              // Then close the drawer
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AboutMe()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.computer_rounded,
              color: kPrimaryColor,
            ),
            title: const Text(
              'Skills',
              style: TextStyle(color: kSecondaryColor),
            ),
            onTap: () {
              // Update the state of the app

              // Then close the drawer
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Skills()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.auto_awesome_outlined,
              color: kPrimaryColor,
            ),
            title: const Text(
              'Portfolio',
              style: TextStyle(color: kSecondaryColor),
            ),
            onTap: () {
              // Update the state of the app

              // Then close the drawer
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Project()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.contact_mail,
              color: kPrimaryColor,
            ),
            title: const Text(
              'Contact',
              style: TextStyle(color: kSecondaryColor),
            ),
            onTap: () {
              // Update the state of the app

              // Then close the drawer
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Contact()));
            },
          ),
        ],
      ),
    );
  }
}
