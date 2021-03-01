import 'package:flutter/material.dart';

class Score extends StatelessWidget {

  final int _score;
  final Function action;

  Score(this._score, this.action);

  String get phrase{
    String thePhrase;

    if (_score == 0){
      thePhrase = "You must be a dumb titan, Worse than dirt!!";
    }
    else if (_score <= 100){
      thePhrase ="Nice one Eldian!!";
    }
    else if (_score <= 200){
      thePhrase = "Another Win for the Survey Corps!!";
    }
    else{
      thePhrase ="The founding Titan!!! XXXXXXX!!!";
    }


    return thePhrase;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(_score.toString(),
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400, fontFamily: "Pops"), ),
          Text(phrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, fontFamily: "Pops", ),
            textAlign: TextAlign.center,),
          FlatButton(onPressed: action, child: Text("Restart Quiz",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, fontFamily: "Pops", ),
          ),
          padding: EdgeInsets.all(40),
            textColor: Colors.blue,

          ),
        ],
      ),
    );
  }
}
