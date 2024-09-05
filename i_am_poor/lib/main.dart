import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 69, 107, 126),
        appBar: AppBar(
          title: Center(
            child: Text("I AM Poor"),
          ),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(image: AssetImage('images/coal.png')),
        ),
      ),
    ),
  );
}
