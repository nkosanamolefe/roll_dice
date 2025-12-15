import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  // Store two separate variables for the state
  var dice1Roll = 1;
  var dice2Roll = 1;

  void rollDice() {
    // Update the state with two independent random numbers
    setState(() {
      dice1Roll = randomizer.nextInt(6) + 1;
      dice2Roll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: .min,
      children: [
        Row(
          mainAxisAlignment: .center,
          children: [
            Image.asset('assets/images/dice-$dice1Roll.png', width: 150),
            const SizedBox(width: 16),
            Image.asset('assets/images/dice-$dice2Roll.png', width: 150),
          ],
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(foregroundColor: Colors.white, textStyle: const TextStyle(fontSize: 28)),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
