import 'package:flutter/material.dart';


class Answer extends StatelessWidget {
  final Function action;
  final String answerText;

  Answer(this.action, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
      width: double.infinity,
      child: RaisedButton(
        padding: EdgeInsets.all(20),
        color: Colors.blue,
        child: Text(
          answerText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
        ),
        onPressed: action ,
      ),
    );
  }
}
