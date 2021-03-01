import 'package:flutter/material.dart';
import 'package:flutter_app_testing/question.dart';
import 'package:flutter_app_testing/answer.dart';



class Quiz extends StatelessWidget {
  final Function getQuestion;
  final int questionIndex;
  final List<Map<String, Object>> questions;

  Quiz({@required this.questions, @required this.getQuestion, @required this.questionIndex });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]["Question"]),
        ...(questions[questionIndex]["Answer"] as List<Map<String, Object>>).map((q) {return Answer(() => getQuestion(q["score"]),q["text"]);}).toList()

      ],
    );
  }
}
