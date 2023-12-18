import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/screens/questions_screen.dart';
import 'package:quiz_app/screens/results_screen.dart';
import 'package:quiz_app/screens/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
      selectedAnswers = [];
    });
  }

  void chooseAnswer(answer) {
    setState(() {
      selectedAnswers.add(answer);
      if (selectedAnswers.length == questions.length) {
        setState(() {
          activeScreen = ResultsScreen(
            chosenAnswers: selectedAnswers,
            onRestart: switchScreen,
          );
        });
      }
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 32, 17, 152),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
