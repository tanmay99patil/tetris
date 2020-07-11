import 'package:flutter/material.dart';
import 'package:tetris/main.dart';

import 'utils/game_button.dart';

enum buttonPressed { Left, Right, Rotate, None }

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  buttonPressed action = buttonPressed.None;

  void bupress(buttonPressed newAction) {
    setState(() {
      action = newAction;
      print(newAction.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            width: Width,
            height: Height,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GameButton(bupress, Icon(Icons.arrow_left), buttonPressed.Left),
            GameButton(bupress, Icon(Icons.arrow_right), buttonPressed.Right),
            GameButton(bupress, Icon(Icons.rotate_left), buttonPressed.Rotate),
          ],
        )
      ],
    );
  }
}
