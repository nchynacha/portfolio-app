import 'package:flutter/material.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/drawer.dart';

class SkillsWeb extends StatelessWidget {
  const SkillsWeb({super.key});

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
              const Text(
                'MY SKILLS',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 5,
                ),
              ),
              const SizedBox(height: 20),
              _buildSkillCard(
                context,
                icon: Icons.catching_pokemon_outlined,
                text:
                    'Hands-on experience in building basic mobile applications using the Flutter framework',
              ),
              const SizedBox(height: 10),
              _buildSkillCard(
                context,
                icon: Icons.catching_pokemon_outlined,
                text:
                    "Understanding of Flutter's widget-based UI architecture, layout, and state management",
              ),
              const SizedBox(height: 10),
              _buildSkillCard(
                context,
                icon: Icons.catching_pokemon_outlined,
                text: 'Basics of SQL for database management',
              ),
              const SizedBox(height: 10),
              _buildSkillCard(
                context,
                icon: Icons.catching_pokemon_outlined,
                text:
                    'Basic knowledge of HTML and CSS for web page structure and styling',
              ),
              const SizedBox(height: 10),
              _buildSkillCard(
                context,
                icon: Icons.catching_pokemon_outlined,
                text:
                    'Familiarity with Android Studio or Visual Studio Code for development',
              ),
              const SizedBox(height: 10),
              _buildSkillCard(
                context,
                icon: Icons.catching_pokemon_outlined,
                text:
                    'Possess a foundational understanding of Firebase, including real-time database management, user authentication, and implementing login systems.',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSkillCard(BuildContext context,
      {required IconData icon, required String text}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 150),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
      decoration: const BoxDecoration(
        color: kBorderColor,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: kPrimaryColor),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 15, color: kWhiteColor),
            ),
          ),
        ],
      ),
    );
  }
}
