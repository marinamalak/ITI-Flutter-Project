import 'package:flutter/material.dart';
import 'package:final_project/app_screens/descrption.dart';
import 'package:final_project/app_screens/login_screen.dart';
import 'package:final_project/app_screens/register_screen.dart';
import 'package:final_project/app_screens/team_page.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          OnboardingPage(
            color: Colors.blue,
            image: 'assets/images/welcoome.jpg',
            title: 'Welcome to App',
            description: 'Discover the ultimate features of our app!',
          ),
          OnboardingPage(
            color: Colors.green,
            image:'assets/images/contact-us-image.jpg',
            title: 'Stay Connected',
            description: 'contact with us easily.',
          ),
          OnboardingPage(
            color: Colors.orange,
            image: 'assets/images/get started.jpg',
            title: 'Get Started',
            description: 'Begin your journey with us today.',
          ),
           Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/welcome.png",
              height: 250,
              width: 250,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('Let\'s you in',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
              child: const Text(
                'Sign in with password',
                style: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Descrption()));
              },
              child: const Text(
                'Description of App',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DeveloperTeam()));
              },
              child: const Text(
                'Developer Team',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 65),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterScreen()));
                  },
                  child: const Text('Sign up'),
                ),
              ],
            ),
          ],
        ),
      ),
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final Color color;
  final String image;
  final String title;
  final String description;


   OnboardingPage({
    required this.color,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image,height: 250,),
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, color: Colors.white70),
            ),
          ),
        ],
      ),
    );
  }
}
