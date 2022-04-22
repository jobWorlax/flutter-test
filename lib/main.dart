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
  int xdQuestionIndex = 0;

  void buttonPressedd() {
    setState(() {
      xdQuestionIndex = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> xdQuestions = ["benis", ":DDDD"];
    List<String> xdAnswers = ["yes", "no", "maybe"];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("MyExDeApp"),
      ),
      body: Column(
        children: [
          Flex(direction: Axis.horizontal),
          Question(xdQuestions[xdQuestionIndex]),
          Answer(xdAnswers[0], buttonPressedd),
          Answer(xdAnswers[1], buttonPressedd),
          Answer(xdAnswers[2], buttonPressedd)
        ],
      ),
    ));
  }
}
