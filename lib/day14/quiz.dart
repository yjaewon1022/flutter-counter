// 메인 화면을 2 x 2 로 표기 될 수 있게 GridView 를 생성한 후,
// 각각의 부분에 ElevatedButton을 생성해주세요.
// 생성한 각 버튼들은 다음의 화면으로 이동할 수 있게 구현을 해주시면 됩니다.
// 왼쪽 상단 버튼 -> 구구단 화면 ( 1단 2단 3단 ... 9단 버튼이 있는 dart파일 )
// 오른쪽 상단 버튼 -> 호텔 예약 화면 ( 버튼 하나씩 눌러서 입력하는 dart파일 )
// 왼쪽 하단 버튼 -> 음악 재생 화면 ( 아까 배운거 )
// 오른쪽 하단 버튼 -> 계산기 화면 ( 1 + 2 = 3 dart파일 )

import 'package:counter/day13/quiz.dart';
import 'package:counter/day9/gugudan.dart';
import 'package:flutter/material.dart';
import 'package:counter/day14/audioplayer.dart';
import 'package:counter/day11/day11-quiz.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "메인 화면", home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "메인 화면",
      home: Scaffold(
        appBar: AppBar(title: Text("메인 화면")),
        body: GridView.count(
          // crossAxisCount = 한 격자 줄에 몇 개를 표기할 것인가?
          crossAxisCount: 2,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Gugudan()),
                );
              },
              child: Container(
                child: Center(child: Text("1")),
                color: Colors.green,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Hotel()),
                );
              },
              child: Container(
                child: Center(child: Text("2")),
                color: Colors.red,
              ),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AudioPage()),
                );
              },
              child: Container(
                child: Center(child: Text("3")),
                color: Colors.blue,
              ),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalculatorWidget()),
                );
              },
              child: Container(
                child: Center(child: Text("4")),
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
