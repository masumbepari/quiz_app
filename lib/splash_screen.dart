import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/quiz-logo.png', width: 300, color: const Color.fromARGB(150, 255, 255, 255),),
          SizedBox(height: 60,),
          Text("Learn Flutter the Fun way !", style: TextStyle(color:Colors.white, fontSize: 20, fontWeight:FontWeight(200),),),
          SizedBox(height: 30,),
          OutlinedButton.icon(onPressed: startQuiz,
           style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
           icon: Icon(Icons.arrow_forward),
           label: Text("Start Quiz"),
           ),
        ],
      ),
    );
  }
}
