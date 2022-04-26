import 'package:flutter/material.dart';

import 'package:hello_world/question.dart';
import 'package:hello_world/answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> _quiz;
  final Function _answerButtonPressed;
  int index;

  Quiz(this._quiz, this._answerButtonPressed, this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flex(direction: Axis.horizontal),
        Question(_quiz[index]["question"] as String),
        ...(_quiz[index]["asnwer"] as List<Map<String, Object>>).map((e) =>
            Answer(e["text"] as String,
                () => _answerButtonPressed(e["madness"] as int)))
      ],
    );
  }
}
