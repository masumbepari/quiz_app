import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
         gradient: LinearGradient(colors: [
          const Color.fromARGB(255, 117, 62, 212),
          const Color.fromARGB(255, 71, 41, 124)
          ],
          begin:Alignment.topCenter,
          end: Alignment.bottomCenter
          
          )
    ),
    child: Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/quiz-logo.png'),
          Text("Learn Flutter the Fun way !"),
          ElevatedButton(onPressed: (){},
           child:Text("Start Quiz"),
           ),
        ],
      ),
    ),
    ),
    );
  }
}
