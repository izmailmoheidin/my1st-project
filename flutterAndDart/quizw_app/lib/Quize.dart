import 'package:flutter/cupertino.dart';
import 'package:quizw_app/question_text.dart';
import './Answer.dart';

class Quize extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback AnswerQuestion;
  Quize(
      {required this.AnswerQuestion,
      required this.questionIndex,
      required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]["QuestionText"] as String,
        ),
        ...(questions[questionIndex]["Answers"] as List<Map<String, Object>>)
            .map(
          (answer) {
            return Answer(()=> AnswerQuestion(answer['score'], answer['text'] )as String);
          },
        ).toList()
      ],
    );
  }
}
