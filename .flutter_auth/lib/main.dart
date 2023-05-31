import 'package:flutter/material.dart';
import 'package:flutter_auth/screens/Login/login_screen.dart';
import 'package:flutter_auth/screens/Signup/signup_screen.dart';
import 'package:flutter_auth/screens/Welcome/welcome_screen.dart';
import 'package:flutter_auth/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const WelcomeScreen(),
    );
  }
}