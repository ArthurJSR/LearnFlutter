/* 
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flexble widget',
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Flexible( //Element with preferred size used
              fit: FlexFit.loose,
              flex: 1,
              child: MyElement(),
            ),
            Flexible( //Element with extra space
              fit: FlexFit.tight,
              flex: 2,
              child: MyElement(),
            ),
            MyElement(), //Element with values defaut
          ],
        ),
      ),
    );
  }
}

class MyElement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: 50.0,
      decoration: BoxDecoration(
        color: Colors.amber,
        border: Border.all(),
      ),
    );
  }
}

*/