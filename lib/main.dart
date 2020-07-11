import 'package:flutter/material.dart';

import 'screen/main_screen.dart';

const double Width = 300;
const double Height = 400;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tetris'), centerTitle: true),
      body: MainScreen(),
    );
  }
}
