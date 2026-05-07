import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
const AnswerButton({super.key, required this.onTap, required this.answerText});
 final void Function() onTap;
 final String answerText;
  
  @override
  Widget build (BuildContext context){
    return ElevatedButton(
      onPressed:onTap, 
      child: Text(answerText)
      );
  }
}