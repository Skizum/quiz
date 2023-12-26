import 'package:flutter/material.dart';
import 'package:quiz/Insightlancer/constants/question.dart';
import 'package:quiz/Insightlancer/constants/color.dart';

import '../../../traitement.dart';
// import 'package:quiz/Insightlancer/traitement.dart';

// import 'package:quiz/Insightlancer/views/subViews/football/football.dart';
class FootballQuiz extends StatefulWidget {
  const FootballQuiz({Key? key}):super(key: key);

  @override
  State<StatefulWidget> createState() {
	return _FootballQuizState();
}

}

class _FootballQuizState extends State<FootballQuiz> {
  var _questionIndex = 0;
  var totalScore = 0;

  

void  answerQuestion(int score){
    totalScore += score;
    setState(() {
   _questionIndex = _questionIndex + 1;      
    });

  print(_questionIndex);
	if (_questionIndex < questionsFootball.length) {
	
	print('We have more questions!');
	} else {
	
	print('No more questions!');
	}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: Image.asset("assets/image/football.png"),
        title: Text(
          "football questions",
          style: TextStyle(
            color: primary,
            fontFamily: "light",
            fontSize: 16,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: _questionIndex < questionsFootball.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questionIndex: _questionIndex,
                questions: questionsFootball,
              ) //Quiz
            : Result(totalScore,(){}),
      ),
    );
  }
}
