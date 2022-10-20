import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Ball8Page(),
    );
  }
}

class Ball8Page extends StatefulWidget {
  const Ball8Page({Key? key}) : super(key: key);

  @override
  State<Ball8Page> createState() => _Ball8PageState();
}

class _Ball8PageState extends State<Ball8Page> {
  int ballMessage = 1;

  void randomBall() {
    return setState(() {
      ballMessage = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Ask Me Anything'),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  randomBall();
                },
                child: Image.asset('images/ball$ballMessage.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
