import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
  var currentQuestionIndex =0;
  void answerQuestion(){
      if(currentQuestionIndex <questions.length-1){
        setState(() {
       currentQuestionIndex++;
       });
      }else{
        //result screen
      }
  }
  
  @override
   Widget build (BuildContext context){
    final currentQuestion = questions[currentQuestionIndex];
    
    return SizedBox(
      width: double.infinity,
      child:Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestion.text, 
            style: GoogleFonts.inter(
              color: const Color.fromARGB(255, 216, 193, 238),
              fontSize: 28,
            ),
            textAlign: TextAlign.center,
            ),
            SizedBox(height:30),
            ...currentQuestion.getSuffledAnswer().map((answer){
                return AnswerButton(onTap: answerQuestion, answerText: answer);
            }),
            
      
          ],
        ),
      ) ,
    );
  }
}

