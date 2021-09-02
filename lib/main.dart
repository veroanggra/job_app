import 'package:flutter/material.dart';
import 'package:job_app/view/home_screen.dart';
import 'package:job_app/view/onboarding_screen.dart';
import 'package:job_app/view/signin_screen.dart';
import 'package:job_app/view/signup_screen.dart';
import 'package:job_app/view/splash_screen.dart';

void main() => runApp(JobApp());

class JobApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        '/onboarding': (context) => OnboardingScreen(),
        '/signup': (context) => SignupScreen(),
        '/signin': (context) => SigninScreen(),
        '/home': (context) => HomeScreen()
      },
    );
  }
}
