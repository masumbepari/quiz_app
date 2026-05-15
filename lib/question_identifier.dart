import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({super.key, 
  required this.isCorrectAnswer,
  required this.questionIndex});
  final bool isCorrectAnswer;
  final int questionIndex;
  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex +1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: 
        isCorrectAnswer? const Color.fromARGB(255, 4, 135, 243)
        :const Color.fromARGB(255, 211, 145, 231),
        borderRadius: BorderRadius.circular(100)
      ),
       child: Text(
           questionNumber.toString(),
           style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 22, 2, 56)
           ),
       )
    );
  }
}