import 'package:flutter/material.dart';
import 'package:tetris/screen/game_screen.dart';
import 'package:tetris/utils/main_button.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  void playButton() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => GameScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Tetris',
            style: TextStyle(
              fontSize: 50,
              shadows: [
                Shadow(
                  color: Colors.black,
                  blurRadius: 10,
                  offset: Offset(3, 3),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          MainButton(playButton),
        ],
      ),
    );
  }
}
