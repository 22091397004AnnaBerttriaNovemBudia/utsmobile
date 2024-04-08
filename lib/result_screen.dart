import 'package:flutter/material.dart';
import 'quiz_screen.dart';

class ResultScreen extends StatelessWidget {
  final int totalQuestions;
  final int correctAnswers;
  final VoidCallback onRestartQuiz;

  const ResultScreen({
    required this.totalQuestions,
    required this.correctAnswers,
    required this.onRestartQuiz,
  });

  @override
  Widget build(BuildContext context) {
    // Menghitung persentase skor
    double percentageScore = (correctAnswers / totalQuestions) * 100;
    int incorrectAnswers = totalQuestions - correctAnswers;

    return Scaffold(
      backgroundColor: Color(0xFFE1AFD1),
      appBar: AppBar(
        title: Text(
          'Score',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFFAD88C6),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Pesan ucapan terima kasih
            Text(
              'Senang Bermain Bersamamu, Tetap Semangat!',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 20),
            // Gambar terima kasih
            Image.asset(
              'images/thanks.png',
              width: MediaQuery.of(context).size.width * 0.85,
            ),
            SizedBox(height: 20),
            // Menampilkan informasi skor
            Text(
              'Correct Answers: $correctAnswers',
              style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              'Incorrect Answers: $incorrectAnswers',
              style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              'Percentage Score: ${percentageScore.toStringAsFixed(2)}%',
              style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40),
            // Tombol untuk ulangi kuis, kembali ke layar utama, dan keluar dari aplikasi
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QuizScreen(),
                          ),
                        );
                      },
                      child: Text('Ulangi'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Color(0xFFF9E897),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.popUntil(context, ModalRoute.withName(Navigator.defaultRouteName));
                      },
                      child: Text('Kembali'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Color(0xFFF9E897),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Keluar'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Color(0xFFF9E897),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}