import 'package:flutter/material.dart';

import 'package:hello_world/question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> _questions;
  final VoidCallback _answerButtonPressed;
  int index = 0;

  void _answerButtonPressedd() {
    ++index;
    _answerButtonPressed.call();
  }

  Quiz(this._questions, this._answerButtonPressed);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flex(direction: Axis.horizontal),
        Question(_questions[index]["question"] as String),
        ...(_questions[index]["asnwer"] as List<String>)
            .map((e) => Answer(e, _answerButtonPressedd))
      ],
    );
  }
}
