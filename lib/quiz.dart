import 'package:flutter/material.dart';
import 'package:quiz_app/splash_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home:Scaffold(
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
    child: SplashScreen(),
    ),
    )
      );
  }
}
