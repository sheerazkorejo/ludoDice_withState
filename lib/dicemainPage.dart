// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'dart:math';

class DiceMainPage extends StatefulWidget {
  const DiceMainPage({Key? key}) : super(key: key);

  @override
  State<DiceMainPage> createState() => _DiceMainPageState();
}

class _DiceMainPageState extends State<DiceMainPage> {
  var leftDiceImage = 1;
  var rightDiceImage = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        title: const Text('Dice Rolling Game'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  leftDiceNum();
                },
                child: Image.asset(
                  'images/dice$leftDiceImage.png',
                ),
              ),
            ),

            Expanded(
              child: FlatButton(
                onPressed: () {
                  rightDiceNum();

                  //print('left Button Pressed');
                },
                child: Image.asset(
                  'images/dice$rightDiceImage.png',
                ),
              ),
            ),
            // Image.asset('images/dice1.png'),
          ],
        ),
      ),
    );
  }

  void leftDiceNum() {
    setState(() {
      leftDiceImage = Random().nextInt(6) + 1;
      print(leftDiceImage);
    });
  }

  void rightDiceNum() {
    setState(() {
      rightDiceImage = Random().nextInt(6) + 1;
      print(rightDiceImage);
    });
  }
}
