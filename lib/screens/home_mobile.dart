import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PORTFOLIO',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
    return Scaffold(
      backgroundColor: kBackgroundColorLight,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Center(
                child: AnimatedBackground(
                  vsync: this,
                  behaviour: RandomParticleBehaviour(options: particles),
                  child: _buildContent(), // แยก Content ออกมาเพื่อความชัดเจน
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildContent() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 20),
          Image.asset(
            'assets/images/cathead.png',
            width: 200,
            height: 100, // ปรับขนาดภาพให้เหมาะสม
          ),
          const SizedBox(height: 20), // เพิ่มระยะห่าง
          const Text(
            'HELLO!',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Welcome to My Space',
            style: TextStyle(color: kSecondaryColor, fontSize: 15),
          ),
          const SizedBox(height: 20),
          const Text(
            "I'm NACHANAN PHADUNGDAEN",
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          ),
          const SizedBox(height: 20),
          Image.asset('assets/images/working.png'),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
