import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.choosenAnswer});
  final List<String> choosenAnswer;
  List<Map<String, Object>> getAnswersData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < choosenAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': choosenAnswer[1],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getAnswersData();
    final numOfTotalQuestions = questions.length;
    final numOfCorrectAnswer = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answered $numOfCorrectAnswer of $numOfTotalQuestions questions correctly !",
            ),
            SizedBox(height: 35),
            QuestionSummary(summaryData),
            SizedBox(height: 15),
            TextButton.icon(onPressed: () {}, icon:Icon(Icons.restart_alt), label: Text('Restart Quiz'),
            style: TextButton.styleFrom(foregroundColor: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
