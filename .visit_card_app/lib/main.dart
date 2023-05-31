import 'package:flutter/material.dart';

void main() {
  runApp(const MyCardVisit());
}

class MyCardVisit extends StatelessWidget {
  const MyCardVisit({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Visit Card',
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.account_circle,
                          size: 50,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Arthur Reis',
                            style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontSize: 32,
                            ),
                          ),
                          Text(
                            'Experience App Developer',
                            style: TextStyle(
                              fontFamily: 'Helvetica',
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text('123 Main Street'),
                      Text('415-555-0198'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(Icons.accessibility,size: 30,),
                      Icon(Icons.timer_outlined, size: 30,),
                      Icon(Icons.phone_android, size: 30,),
                      Icon(Icons.phone_iphone, size: 30,),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
