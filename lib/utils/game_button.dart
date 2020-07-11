import 'package:flutter/material.dart';
import 'package:tetris/game.dart';

class GameButton extends StatelessWidget {
  Function gameClicked;
  Icon gameIcon;
  buttonPressed newAction;

  GameButton(this.gameClicked, this.gameIcon, this.newAction);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      padding: EdgeInsets.all(8),
      child: RaisedButton(
        onPressed: () {
          gameClicked(newAction);
        },
        color: Colors.blue,
        child: gameIcon,
      ),
    );
  }
}
