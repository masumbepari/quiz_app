import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});
  @override
   State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
  
}

class _QuestionScreenState extends State<QuestionScreen>{
  
  
  @override
   Widget build (BuildContext context){
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child:Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestion.text, 
            style: TextStyle(color:Colors.white, fontSize: 20),
            textAlign: TextAlign.center,
            ),
            SizedBox(height:30),
            ...currentQuestion.answers.map((answer){
                return AnswerButton(onTap: (){}, answerText: answer);
            }),
            
            // SizedBox(height: 20,),
            // AnswerButton(onTap: (){}, answerText:currentQuestion.answers[1]),
            // SizedBox(height: 20,),
            // AnswerButton(onTap: (){}, answerText:currentQuestion.answers[2]),
            // SizedBox(height: 20,),
            // AnswerButton(onTap: (){}, answerText:currentQuestion.answers[3]),
          ],
        ),
      ) ,
    );
  }
}

