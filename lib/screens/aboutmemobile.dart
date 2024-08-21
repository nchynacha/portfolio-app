import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';

class AboutMeMobile extends StatefulWidget {
  const AboutMeMobile({Key? key}) : super(key: key);

  @override
  State<AboutMeMobile> createState() => _AboutMeMobileState();
}

class _AboutMeMobileState extends State<AboutMeMobile>
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
            margin: const EdgeInsets.symmetric(horizontal: 20),
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/watching.png',
                    width: 200,
                    height: 200,
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'NACHANAN PHADUNGDAEN',
                    style: TextStyle(
                      fontSize: 20,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'ABOUT ME',
                    style: TextStyle(
                      letterSpacing: 5,
                      color: kSecondaryColor,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  _buildAnimatedCard(
                    child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'EDUCATION',
                            style: TextStyle(
                              color: kWhiteColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Bachelor of Computer Engineering',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kWhiteColor,
                            ),
                          ),
                          Text(
                            'Institute of Engineering',
                            style: TextStyle(
                              color: kWhiteColor,
                            ),
                          ),
                          Text(
                            'Suranaree University of Technology',
                            style: TextStyle(
                              color: kWhiteColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  _buildAnimatedCard(
                    child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'LANGUAGES',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: kWhiteColor,
                            ),
                          ),
                          SizedBox(height: 10),
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
                          SizedBox(height: 5),
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
                          SizedBox(height: 5),
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
            ),
          ),
        ),
      ),
    );
  }
}
