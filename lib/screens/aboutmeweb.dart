import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/drawer.dart';

class AboutMeWeb extends StatefulWidget {
  const AboutMeWeb({super.key});

  @override
  _AboutMeWebState createState() => _AboutMeWebState();
}

class _AboutMeWebState extends State<AboutMeWeb>
    with SingleTickerProviderStateMixin {
  late AnimationController kThemeAnimationController;

  @override
  void initState() {
    super.initState();
    kThemeAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 750),
    );

    kThemeAnimationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    kThemeAnimationController.dispose();
    super.dispose();
  }

  Widget _buildAnimatedCard({required Widget child}) {
    return AnimatedBuilder(
      animation: kThemeAnimationController,
      builder: (context, child) {
        return Transform.rotate(
          angle: kThemeAnimationController.value * 3.141592653589793 / 100,
          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 420),
            elevation: kThemeAnimationController.value * 10,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            shadowColor: Colors.black,
            color: kBorderColor.withOpacity(kThemeAnimationController.value),
            child: child,
          ),
        );
      },
      child: child,
    );
  }

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
            icon: const Icon(Icons.menu),
          ),
        ),
      ),
      drawer: const Drawerr(),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/watching.png',
              width: 200,
              height: 200,
            ),
            const Text(
              'NACHANAN PHADUNGDAEN',
              style: TextStyle(
                fontSize: 30,
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              children: <Widget>[
                const Text(
                  'ABOUT ME',
                  style: TextStyle(
                    letterSpacing: 5,
                    color: kSecondaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                _buildAnimatedCard(
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'EDUCATION',
                              style: TextStyle(
                                color: kWhiteColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Bachelor of Computer Engineering',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kWhiteColor,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Institute of Engineering',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                color: kWhiteColor,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Suranaree University of Technology',
                              style: TextStyle(
                                color: kWhiteColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                _buildAnimatedCard(
                  child: const Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'LANGUAGES',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: kWhiteColor,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'THAI',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kWhiteColor,
                              ),
                            ),
                            Spacer(),
                            Text(
                              'Native',
                              style: TextStyle(
                                color: kWhiteColor,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'ENGLISH',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kWhiteColor,
                              ),
                            ),
                            Spacer(),
                            Text(
                              'Good',
                              style: TextStyle(
                                color: kWhiteColor,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'CHINESE',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kWhiteColor,
                              ),
                            ),
                            Spacer(),
                            Text(
                              'Elementary',
                              style: TextStyle(
                                color: kWhiteColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
