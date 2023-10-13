import 'package:flutter/material.dart';
import 'package:quiz_app/pages/quiz.dart';

void main() {
  runApp(const MaterialApp(home: QuizApp()));
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade100,
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset("images/avatar.png"),
          const SizedBox(
            height: 90,
          ),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 22.0, right: 22.0),
                      height: 70,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue.shade400,
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Quiz()));
                          },
                          child: Text(
                            "PLAY QUIZ",
                            style: TextStyle(fontSize: 22.0),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
