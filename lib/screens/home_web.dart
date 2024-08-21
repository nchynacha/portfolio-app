import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/aboutme.dart';

class HomeWeb extends StatefulWidget {
  const HomeWeb({super.key});

  @override
  State<HomeWeb> createState() => _HomeWebState();
}

class _HomeWebState extends State<HomeWeb> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PORTFLOIO',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: '',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  final ParticleOptions particles = const ParticleOptions(
    baseColor: kBackgroundAnimateColor,
    spawnOpacity: 0.0,
    opacityChangeRate: 0.20,
    minOpacity: 0.1,
    maxOpacity: 0.4,
    particleCount: 10,
    spawnMaxRadius: 50.0,
    spawnMaxSpeed: 80.0,
    spawnMinSpeed: 20,
    spawnMinRadius: 10.0,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kBackgroundColorLight,
        body: SafeArea(
          child: AnimatedBackground(
            vsync: this,
            behaviour: RandomParticleBehaviour(options: particles),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/images/cathead.png',
                            width: 400,
                            height: 70,
                          ),
                          const Text(
                            'HELLO!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 100,
                              fontWeight: FontWeight.bold,
                              color: kPrimaryColor,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Welcome to My Space',
                            style:
                                TextStyle(color: kSecondaryColor, fontSize: 35),
                          ),
                          const SizedBox(height: 35),
                          const Text(
                            "I'm NACHANAN PHADUNGDAEN",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: kPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 50),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image.asset('assets/images/working.png'),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const AboutMe(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: kWhiteColor,
                              backgroundColor: kSecondaryColor,
                              minimumSize: const Size(400, 100),
                              padding: const EdgeInsets.all(20),
                            ),
                            child: const Text(
                              "Let's Go",
                              style: TextStyle(fontSize: 40),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
