import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.onTap,
    required this.answerText,
  });
  final void Function() onTap;
  final String answerText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
        backgroundColor: const Color.fromARGB(255, 44, 1, 80),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      child: Text(answerText, textAlign: TextAlign.center,),
    );
  }
}
