import 'package:flutter/material.dart';

import 'package:hello_world/quiz.dart';
import 'package:hello_world/result.dart';

void main() {
  runApp(HeheExDe());
}

class HeheExDe extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HeheExDeState();
  }
}

class HeheExDeState extends State {
  List<Map<String, Object>> xdQuestions = [
    {
      "question": "Benis :DDDDDDDDDD",
      "asnwer": [
        {"text": "yes", "madness": 2},
        {"text": "no", "madness": 1},
        {"text": "maybe", "madness": 3},
      ],
    },
    {
      "question": "Do you drink water?",
      "asnwer": [
        {"text": "no", "madness": 1},
        {"text": "no", "madness": 1},
        {"text": "maybe", "madness": 3},
      ],
    },
    {
      "question": "yes",
      "asnwer": [
        {"text": "y", "madness": 1},
        {"text": "e", "madness": 2},
        {"text": "s", "madness": 3},
      ],
    },
  ];

  int questionIndex = 0;
  int _totalMadness = 0;

  void answerButtonPressed(int madness) {
    _totalMadness += madness;

    setState(() {
      ++questionIndex;
    });
  }

  void restartButtonPressed() {
    setState(() {
      questionIndex = 0;
      _totalMadness = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyExDeApp"),
        ),
        body: questionIndex <= xdQuestions.length - 1
            ? Quiz(xdQuestions, answerButtonPressed, questionIndex)
            : Results(restartButtonPressed, _totalMadness),
      ),
    );
  }
}
