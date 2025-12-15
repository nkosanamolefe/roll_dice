import 'package:flutter/material.dart';
import 'package:roll_dice/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer([const Color.fromARGB(255, 23, 7, 51), const Color.fromARGB(255, 23, 2, 59)])),
      ),
    );
}
