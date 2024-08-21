import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/drawer.dart';

class ProjectWeb extends StatefulWidget {
  const ProjectWeb({super.key});

  @override
  State<ProjectWeb> createState() => _ProjectWebState();
}

class _ProjectWebState extends State<ProjectWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColorLight,
      appBar: AppBar(
        backgroundColor: kBackgroundColorDark,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu),
          ),
        ),
      ),
      drawer: const Drawerr(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'MY PROJECT',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 5,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 400,
                        height: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.0),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/flutter-login.png'))),
                      ),
                      SizedBox(
                        height: 10,
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
                    ],
                  ),
                  Divider(),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 400,
                        height: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.0),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/restaurant.png'))),
                      ),
                      SizedBox(
                        height: 10,
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
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Divider(),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 400,
                        height: 350,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.0),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/calculator.png'))),
                      ),
                      SizedBox(
                        height: 10,
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
                    ],
                  ),
                ],
              ),
              Divider(),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 500,
                        height: 450,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.0),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/Login.png'))),
                      ),
                      SizedBox(
                        height: 10,
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
                    ],
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Divider(),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 500,
                        height: 450,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.0),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage('assets/images/gallery.png'))),
                      ),
                      SizedBox(
                        height: 10,
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
                    ],
                  ),
                ],
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
