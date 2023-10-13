import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/pages/question.dart';
import 'package:quiz_app/pages/result.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<Question> questions = [
    Question(
        q: 'Somalia has only two permanent rivers, the Juba and the Shabelle.',
        a: true),
    Question(q: 'H&M stands for Hennes & Mauritz.', a: true),
    Question(
        q: 'There are fewer than one million Muslims throughout the world.',
        a: false),
    Question(q: 'The sun is not a star.', a: false),
    Question(q: 'Facebook was the first social media website.', a: false),
    Question(q: 'Somalia gained independence on 1 July 1960.', a: true),
  ];
  int questionIndex = 0;
  int correctAnswers = 0;
  int falsesAnswers = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Center(
              // ignore: prefer_const_constructors
              child: Text(
                questions[questionIndex].questionName!,
                textAlign: TextAlign.center,
                style: GoogleFonts.kanit(
                    fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  height: 70,
                  // ignore: prefer_const_constructors
                  margin: EdgeInsets.only(
                    left: 22.0,
                    right: 22.0,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.green),
                    onPressed: () {
                      // ignore: unused_local_variable
                      final isCorrect =
                          questions[questionIndex].questionAnswers;

                      if (isCorrect == true) {
                        print("Waa Saxday");
                        setState(() {
                          correctAnswers = correctAnswers + 1;
                        });
                      } else {
                        print("Wad qaladay");
                        setState(() {
                          falsesAnswers = falsesAnswers + 1;
                        });
                      }
                      setState(() {
                        if (questionIndex < questions.length - 1)
                          questionIndex++;
                        else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Result(
                                      answer: correctAnswers,
                                      falses: falsesAnswers)));
                        }
                      });
                    },
                    child: Text("TRUE",
                        style: GoogleFonts.delaGothicOne(fontSize: 20)),
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                      height: 70,
                      // ignore: prefer_const_constructors
                      margin: EdgeInsets.only(
                        left: 22.0,
                        right: 22.0,
                        bottom: 27,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        onPressed: () {
                          // ignore: unused_local_variable
                          final IsFalse =
                              questions[questionIndex].questionAnswers;

                          if (IsFalse == false) {
                            print("Wad Saxday");
                            setState(() {
                              correctAnswers = correctAnswers + 1;
                            });
                          } else {
                            print("Wad Qaladay");
                            setState(() {
                              falsesAnswers = falsesAnswers + 1;
                            });
                          }
                          setState(() {
                            if (questionIndex < questions.length - 1)
                              questionIndex++;
                            else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Result(
                                          answer: correctAnswers,
                                          falses: falsesAnswers)));
                            }
                          });
                        },
                        child: Text("FALSE",
                            style: GoogleFonts.delaGothicOne(fontSize: 20)),
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
