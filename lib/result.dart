import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  VoidCallback _restartButtonPressed;
  late String outputMessage;

  Results(this._restartButtonPressed, int score) {
    if (score <= 3) {
      outputMessage = "Boring...";
    } else if (score <= 6) {
      outputMessage = "Welcome to the club, buddy.";
    } else {
      outputMessage = "True chad.";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(outputMessage),
          ElevatedButton(
            onPressed: _restartButtonPressed,
            child: Text("Restart!"),
          )
        ],
      ),
    );
  }
}
