import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary.dart';

class ResultScreen extends StatelessWidget{
  const ResultScreen({super.key, required this.choosenAnswer});
  final List<String> choosenAnswer;
  List<Map<String, Object>>getAnswersData(){
     final List<Map<String, Object>> summary = [];
     for(var i=0; i<choosenAnswer.length; i++){
        summary.add({
          'question_index':i,
          'question':questions[i].text,
          'correct_answer':questions[i].answers[0],
          'user_answer':choosenAnswer[1],
        });
     }
    return summary;
  }
  @override
  Widget build (BuildContext context){
     return SizedBox(
       width: double.infinity,
       child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
                  QuestionSummary(getAnswersData()),
                  SizedBox(height: 15,),
                  TextButton(onPressed: (){}, child: Text('Restar Quiz'))
          ],
        ),
       ),
     );
  }
}