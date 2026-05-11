import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget{
  const ResultScreen({super.key});
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
                  Text('your correct answers are x out of y'),
                  SizedBox(height: 25,),
                  Text('correct or wrong answer'),
                  SizedBox(height: 25,),
                  TextButton(onPressed: (){}, child: Text('Restar Quiz'))
          ],
        ),
       ),
     );
  }
}