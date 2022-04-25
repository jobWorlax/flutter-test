import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  VoidCallback _restartButtonPressed;

  Results(this._restartButtonPressed);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("XDDD"),
          ElevatedButton(
            onPressed: _restartButtonPressed,
            child: Text("Restart!"),
          )
        ],
      ),
    );
  }
}
