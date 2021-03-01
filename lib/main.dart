import 'package:flutter/material.dart';
import 'package:flutter_app_testing/quiz.dart';
import 'package:flutter_app_testing/score.dart';

void main(){
  runApp(TestApp());
}

class TestApp extends StatefulWidget{

  @override
  State<StatefulWidget> createState(){
    return TestAppState();
  }
}


class TestAppState extends State<TestApp>{

  int questionIndex = 0;
  int totalScore = 0;

  void resetQuiz(){
    setState(() {
      totalScore =0;
      questionIndex = 0;
    });
  }

  void getQuestion(int score){

   totalScore += score;
    setState(() {
        questionIndex++;
    });

  }

  @override
  Widget build(BuildContext context) {

    const List<Map<String, Object>> _questions = [
      {
        "Question": "Who is Eren Yeager",
        "Answer" : [
          {"text": "Attack Titan", "score": 100},
          {"text":"Jaw Titan", "score": 0},
          {"text":"Colossal Titan", "score": 0},
          {"text": "Femal Titan", "score": 0}]
      },
      {
        "Question": "Whats the rumbling",
        "Answer" : [
          {"text":"Control of wall titans", "score": 100},
          {"text":"Cordinate all the titans", "score": 0},
          {"text":"Break the dance floor", "score": 0},
          {"text":"Create an earthquake", "score": 0}]
      },
      {
        "Question": "Who gave Eren yeager his Attack titan",
        "Answer" : [
          {"text":"Grisha Yeager", "score": 100},
          {"text":"Eren Yeager", "score": 0},
          {"text":"Zeke Yeager", "score": 0},
          {"text":"Eren Kruger", "score": 0}]
      },
    ];
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello AppBar"),
        ),
        body: questionIndex < _questions.length ?
        Quiz(questions: _questions, getQuestion: getQuestion, questionIndex: questionIndex) : Score(totalScore, resetQuiz)
      ),
    );
  }
}