import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({Key? key}) : super(key: key);

  @override
  _ContactMobileState createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(begin: 0.8, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
    _controller.repeat(reverse: true); // Make the animation repeat indefinitely
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColorLight,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 70),
              const Text(
                'Get In Touch',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 5,
                ),
              ),
              const SizedBox(height: 20),
              AnimatedBuilder(
                animation: _controller,
                builder: (BuildContext context, Widget? child) {
                  return ScaleTransition(
                    scale: _scaleAnimation,
                    child: Container(
                      margin: const EdgeInsets.only(left: 50, right: 50),
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                        color: kBorderColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.phone_iphone_rounded,
                            color: kPrimaryColor,
                            size: 30,
                          ),
                          const SizedBox(width: 30),
                          Text(
                            '123-456-7890',
                            style: TextStyle(fontSize: 15, color: kWhiteColor),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              AnimatedBuilder(
                animation: _controller,
                builder: (BuildContext context, Widget? child) {
                  return ScaleTransition(
                    scale: _scaleAnimation,
                    child: Container(
                      margin: const EdgeInsets.only(left: 50, right: 50),
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                        color: kBorderColor,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.mail_outline_outlined,
                            color: kPrimaryColor,
                            size: 30,
                          ),
                          const SizedBox(width: 30),
                          Text(
                            'info@nacha.com',
                            style: TextStyle(fontSize: 15, color: kWhiteColor),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              AnimatedBuilder(
                animation: _controller,
                builder: (BuildContext context, Widget? child) {
                  return ScaleTransition(
                    scale: _scaleAnimation,
                    child: Container(
                      margin: const EdgeInsets.only(left: 50, right: 50),
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                        color: kBorderColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/line.png',
                            width: 30,
                            height: 30,
                            color: kPrimaryColor,
                          ),
                          const SizedBox(width: 30),
                          Text(
                            'Line : idnacha',
                            style: TextStyle(fontSize: 15, color: kWhiteColor),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              AnimatedBuilder(
                animation: _controller,
                builder: (BuildContext context, Widget? child) {
                  return ScaleTransition(
                    scale: _scaleAnimation,
                    child: Container(
                      margin: const EdgeInsets.only(left: 50, right: 50),
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                        color: kBorderColor,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/github.png',
                            width: 30,
                            height: 30,
                            color: kPrimaryColor,
                          ),
                          const SizedBox(width: 30),
                          Text(
                            'githubnacha.com',
                            style: TextStyle(fontSize: 15, color: kWhiteColor),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
