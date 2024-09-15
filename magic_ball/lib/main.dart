// Magic ball App
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade900,
        appBar: AppBar(
          title: const Center(child: Text('Ask Me Anything')),
          backgroundColor: Colors.blue,
        ),
        body: const BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => BallPageState();
}

class BallPageState extends State<BallPage> {
  int ballnumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballnumber = Random().nextInt(5) + 1;
            // ignore: avoid_print
            print(ballnumber);
          });
        },
        child: Image.asset('images/ball$ballnumber.png'),
      ),
    );
  }
}
