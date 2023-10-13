import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/main.dart';

class Result extends StatelessWidget {
  const Result({Key? key, required this.answer, required this.falses})
      : super(key: key);
  final int answer;
  final int falses;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                'https://cdn-icons-png.flaticon.com/512/7504/7504092.png'),
            Text(
              'Correct:$answer',
              style: GoogleFonts.tiltNeon(
                  fontSize: 24,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold),
            ),
            Divider(
              height: 12,
              color: Colors.white,
            ),
            Text(
              'Failed:$falses',
              style: GoogleFonts.tiltNeon(
                  fontSize: 24.0,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => QuizApp()));
        },
        child: Icon(Icons.logout),
      ),
    );
  }
}
