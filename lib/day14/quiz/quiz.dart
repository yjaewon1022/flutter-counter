// 메인화면 : gridView (2 x 2)
// 각 부분에 elevated btn 생성
// 버튼을 누르면 다음 화면으로 이동
// 1. 구구단 페이지(alert 있는 것) .dart
// 2. 호텔예약 페이지
// 3. 음악재생 페이지
// 4. 계산기 화면 (1+2=3 다트파일)

import 'package:counter/day11/day11quiz.dart';
import 'package:counter/day14/main.dart';
import 'package:counter/day14/player.dart';
import 'package:flutter/material.dart';
import 'package:counter/day9/gugudan.dart';
import 'package:counter/day12/quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "14일차 퀴즈", home: QuizMain());
  }
}

class QuizMain extends StatefulWidget {
  const QuizMain({Key? key}) : super(key: key);

  @override
  State<QuizMain> createState() => QuizMainState();
}

class QuizMainState extends State<QuizMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("--")),
      body: GridView.count(
        //간격주기
        mainAxisSpacing: 20.0, //  간격 조절
        crossAxisSpacing: 20.0,
        crossAxisCount: 2,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Gugudan()),
              );
            },
            child: Text("구구단"),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(24)),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Quiz1Widget()),
              );
            },
            child: Text("호텔 예약"),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(24)),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AudioPage()),
              );
            },
            child: Text("음악 재생"),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(24)),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Calcul()),
              );
            },
            child: Text("계산기"),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(24)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
