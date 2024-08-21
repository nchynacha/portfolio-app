import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';

class ProjectMobile extends StatefulWidget {
  const ProjectMobile({super.key});

  @override
  State<ProjectMobile> createState() => _ProjectMobileState();
}

class _ProjectMobileState extends State<ProjectMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColorLight,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Container(
                width: 300,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/flutter-login.png'))),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'LOGIN-SIGNUP',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Flutter, Dart & Firebase',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 15,
                ),
              ),
              Divider(),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 300,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/restaurant.png'))),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'RESTAURANT',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Flutter & Dart',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 300,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/calculator.png'))),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'CALCULATOR',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Flutter & Dart',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 15,
                ),
              ),
              Divider(),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 300,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/Login.png'))),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'REGISTER-LOGIN',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'HTML, CSS & JS',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 300,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/gallery.png'))),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'PHOTO GALLERY',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'HTML, CSS & JS',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
