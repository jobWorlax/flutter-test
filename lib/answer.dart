import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  String _text;
  VoidCallback _callback;

  Answer(
    this._text,
    this._callback,
  );

  void ButtonsPressed() {}

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _callback,
      child: Text(_text),
      style: ElevatedButton.styleFrom(minimumSize: Size(85, 35)),
    );
  }
}
