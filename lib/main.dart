import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MagicBall());
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Magic 8 Ball'),
        ),
        body: SafeArea(
          child: TextButton(
            onPressed: () {
              setState(() {
                ballNumber = Random().nextInt(6);
              });
            },
            child: Center(
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ),
      ),
    );
  }
}
