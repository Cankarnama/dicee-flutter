import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicees'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  void buttonChange() {
    LeftdiceNumber = Random().nextInt(6) + 1;
    RightnumberDice = Random().nextInt(6) + 1;
    print(
        'The left button was just changed to number $LeftdiceNumber and $RightnumberDice for the right');
  }

  int LeftdiceNumber = 1;
  int RightnumberDice = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  buttonChange();
                  // LeftdiceNumber = Random().nextInt(6) + 1;
                  //RightnumberDice = Random().nextInt(6) + 1;
                  // print(
                  //   'The left button was just changed to number $LeftdiceNumber and $RightnumberDice for the right');
                });
              },
              child: Image.asset('images/dice$LeftdiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  buttonChange();
                  //RightnumberDice = Random().nextInt(6) + 1;
                  // LeftdiceNumber = Random().nextInt(6) + 1;
                  // print(
                  //  'The right button was just just changed to $RightnumberDice and $LeftdiceNumber for the right ');
                });
              },
              child: Image.asset('images/dice$RightnumberDice.png'),
            ),
          ),
        ],
      ),
    );
  }
}
