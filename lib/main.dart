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

  void answerButtonPressed() {
    setState(() {
      ++xdQuestionIndex;
    });
  }

  void restartButtonPressed() {
    setState(() {
      xdQuestionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyExDeApp"),
        ),
        body: xdQuestionIndex < xdQuestions.length
            ? 
            : Center(
                child: Column(
                  children: [
                    Text("XDDD"),
                    ElevatedButton(
                      onPressed: restartButtonPressed,
                      child: Text("Restart!"),
                    )
                  ],
                ),
              ),
      ),
    );
  }
}
