import 'package:flutter/material.dart';
import 'package:quizw_app/Answer.dart';
import 'package:quizw_app/Quize.dart';
import './question_text.dart';
import './Answer.dart';
import './result.dart';

void main() {
  runApp(QuizeApp());
}

class QuizeApp extends StatefulWidget {
  @override
  State<QuizeApp> createState() => _QuizeAppState();
}

class _QuizeAppState extends State<QuizeApp> {
  static const _questions = [
    {
      "QuestionText": "which team do u support?",
      "Answers": [
        {'text': "arsenal", 'score': 10},
        {'text': "man city", 'score': 10},
        {'text': "ac milan", 'score': 10}
      ]
    },
    {
      "QuestionText": "who is the top scorer of Epl all time?",
      "Answers": [
        {'text': "messi", 'score': 0},
        {'text': "Rooney", 'score': 10},
        {'text': "Henrey", 'score': 0}
      ]
    },
    {
      "QuestionText": "who is the top assist of Epl all time?",
      "Answers": [
        {'text': "Ozil", 'score': 10},
        {'text': "ces", 'score': 0},
        {'text': "Kevin", 'score': 0}
      ]
    }
  ];
  var _questionIndex = 0;
  var _TotalScore=0;

  void _AnswerQuestion(int score) {
    _TotalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Quize App"),
            centerTitle: true,
          ),
          body: _questionIndex < _questions.length
              ? Quize(
                  AnswerQuestion: _AnswerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions)
              : Result()),
    );
  }
}
