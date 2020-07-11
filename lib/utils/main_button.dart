import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  Function onCLicked;

  MainButton(this.onCLicked);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 120,
      height: 50,
      child: RaisedButton(
        onPressed: () {
          onCLicked();
        },
        color: Colors.lightBlueAccent,
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
