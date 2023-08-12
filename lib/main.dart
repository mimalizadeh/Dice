import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade900,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.blueGrey.shade800,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  dice();
                  print("left dice number : $leftDiceNumber");
                });
              },
              child: Image.asset("images/dice$leftDiceNumber.png"),
            ),
          ),
          Expanded(
              child: TextButton(
            onPressed: () {
              setState(() {
                dice();
                print("right button touched ");
              });
            },
            child: Image.asset("images/dice$rightDiceNumber.png"),
          ))
        ],
      ),
    );
  }

  // generate random number
  int random_int(int max) {
    return Random().nextInt(max) + 1;
  }

  //set new random on each dice!
  void dice() {
    rightDiceNumber = random_int(6);
    leftDiceNumber = random_int(6);
  }
}
