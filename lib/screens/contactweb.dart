import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/drawer.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({Key? key}) : super(key: key);

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb>
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
      resizeToAvoidBottomInset: false,
      backgroundColor: kBackgroundColorLight,
      appBar: AppBar(
        backgroundColor: kBackgroundColorDark,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
        ),
      ),
      drawer: const Drawerr(),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20),
            const Text(
              'Get In Touch',
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 5),
            ),
            const SizedBox(height: 20),
            AnimatedBuilder(
              animation: _controller,
              builder: (BuildContext context, Widget? child) {
                return Transform.scale(
                  scale: _scaleAnimation.value,
                  child: Container(
                    width: 400,
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
                          size: 35,
                        ),
                        const SizedBox(width: 30),
                        Text(
                          '123-456-7890',
                          style: TextStyle(fontSize: 20, color: kWhiteColor),
                        )
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
                return Transform.scale(
                  scale: _scaleAnimation.value,
                  child: Container(
                    width: 400,
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
                          size: 35,
                        ),
                        const SizedBox(width: 30),
                        Text(
                          'info@nacha.com',
                          style: TextStyle(fontSize: 20, color: kWhiteColor),
                        )
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
                return Transform.scale(
                  scale: _scaleAnimation.value,
                  child: Container(
                    width: 400,
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
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Line : idnacha',
                          style: TextStyle(fontSize: 20, color: kWhiteColor),
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
                return Transform.scale(
                  scale: _scaleAnimation.value,
                  child: Container(
                    width: 400,
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
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'GITHUB : githubnacha',
                          style: TextStyle(fontSize: 20, color: kWhiteColor),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/images/pngegg.png',
              height: 200,
              width: double.infinity,
              color: kSecondaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
