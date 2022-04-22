import 'package:flutter/material.dart';
import 'package:hello_world/answer.dart';
import 'package:hello_world/question.dart';

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
      "asnwer": ["yes", "no", "maybe"],
    },
    {
      "question": "Do you drink water?",
      "asnwer": ["yes", "no", "maybe"],
    },
    {
      "question": "yes",
      "asnwer": ["yes", "no", "maybe"],
    },
  ];

  int xdQuestionIndex = 0;

  void buttonPressedd() {
    setState(() {
      xdQuestionIndex = xdQuestionIndex >= xdQuestions.length - 1
          ? xdQuestions.length - 1
          : xdQuestionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("MyExDeApp"),
      ),
      body: Column(
        children: [
          Flex(direction: Axis.horizontal),
          Question(xdQuestions[xdQuestionIndex]["question"] as String),
          ...(xdQuestions[xdQuestionIndex]["asnwer"] as List<String>)
              .map((e) => Answer(e, buttonPressedd))
        ],
      ),
    ));
  }
}
