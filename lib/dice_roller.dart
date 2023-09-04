import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

class diceroller extends StatefulWidget {
  const diceroller({super.key});

  @override
  State<diceroller> createState() {
    return _dicerollerState();
  }
}

class _dicerollerState extends State<diceroller> {
  var activediceimage = 'asset/images/dice-2.png';
  void rolldice() {
    var diceroll = Random().nextInt(6) + 1;
    setState(() {
      activediceimage = 'asset/images/dice-$diceroll.png';
    });
  }

  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(activediceimage, width: 200),
        const SizedBox(height: 20),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          onPressed: rolldice,
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
