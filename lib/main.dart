import 'package:flutter/material.dart';
import 'package:roll_dice/gradient.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 75, 38, 82),
        body: GradientContainer(Colors.deepPurple, Colors.purpleAccent),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
