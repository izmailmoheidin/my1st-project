import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback SelectHandler;
  final String AnswerText;
  Answer(this.SelectHandler, this.AnswerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(AnswerText),
        onPressed: SelectHandler,
      ),
    );
  }
}
