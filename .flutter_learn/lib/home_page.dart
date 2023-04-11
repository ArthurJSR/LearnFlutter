import 'package:flutter/material.dart';
import 'package:flutter_learn/components/classification.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Container titleSection;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Building Layouts'),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      body: Center(
        child: Image.asset(
          'assets/media_cat.png',
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}
