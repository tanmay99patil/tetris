import 'package:flutter/material.dart';
import 'package:tetris/game.dart';

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Play'),
        centerTitle: true,
      ),
      body: Game(),
    );
  }
}
