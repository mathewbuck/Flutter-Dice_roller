import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Dicee'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void rollDice() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: (){
                setState(() {
                  rollDice();
                });
              },
            ),
          ),
          Expanded(
            child: FlatButton(child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: (){
                setState(() {
                  rollDice();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
