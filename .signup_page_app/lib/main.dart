import 'package:flutter/material.dart';
import 'package:signup_page_app/constants.dart';
import 'package:signup_page_app/Screens/Welcome/welcome_screen.dart';

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
      title: 'Singup Page App',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.yellow,
      ),
      home: WelcomeScreen(),
    );
  }
}