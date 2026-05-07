
import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

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
    return SizedBox(
      width: double.infinity,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Question", style: TextStyle(color:Colors.white, fontSize: 20),),
          SizedBox(height:30),
          AnswerButton(onTap: (){}, answerText:"Answer 1 from reuseable button"),
          SizedBox(height: 20,),
          AnswerButton(onTap: (){}, answerText:"Answer 2 from reuseable button"),
          SizedBox(height: 20,),
          AnswerButton(onTap: (){}, answerText:"Answer 3 from reuseable button"),
          SizedBox(height: 20,),
          AnswerButton(onTap: (){}, answerText:"Answer 4 from reuseable button"),
        ],
      ) ,
    );
  }
}

