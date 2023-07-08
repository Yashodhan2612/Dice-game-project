import 'package:flutter/material.dart';
import 'dart:math';
import 'package:first_app/styled_text.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

//below class is private and can be used within this class itself
class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random();
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const StyledText('Dice Game Project!'),
        const Padding(padding: EdgeInsets.only(bottom: 50)),
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 50,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 214, 239, 23),
                textStyle: const TextStyle(fontSize: 25)),
            child: const Text('Click Here to ROLL!')),
        const Padding(padding: EdgeInsetsDirectional.only(top: 50)),
        const Text(
          'Created by Yashodhan!',
          style: TextStyle(
              fontSize: 14,
              color: Color.fromARGB(255, 214, 239, 23),
              fontStyle: FontStyle.italic),
        ),
      ],
    );
  }
}
