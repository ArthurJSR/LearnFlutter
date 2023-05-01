/*
import 'package:flutter/material.dart';


class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget expanded',
      home: Scaffold(
        body: Row(
          children: [
            greenBox(),
            Expanded( //Responsable for 
              child: greenBox(),
            ),
            Expanded(
              child: greenBox(),
            ),
            greenBox(),
          ],
        ),
      ),
    );
  }
}

class greenBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.green,
        border: Border.all(),
      ),
    );
  }
}

 */