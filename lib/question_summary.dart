import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget{
  const QuestionSummary(this.summaryData,{super.key});
  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data){
            return Row(
              children: [
                Text(((data['question_index'] as int)+1).toString()),
                Expanded(
                  child: Column(
                    children: [
                      Text((data['question'] as String), style: GoogleFonts.lato(color: Colors.white),),
                      SizedBox(height: 5,),
                      Text((data['user_answer'] as String)),
                      Text((data['correct_answer'] as String))
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}