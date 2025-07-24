//메인 화면을 2x2 로 표기 할 수 있게 Gridview 생성한 후,
//각각의 부분에 ElevatedButton을 생성
//생성한 각 버튼들은 다음의 화면으로 이동할 수 있게 구현
//왼쪽 상단 버튼 => 구구단 화면(1단-9단 버튼이 있는 dart파일)
//오른쪽 상단 버튼 => 호텔 예약 화면(버튼 하나씩 눌러서 입력하는 dart 파일)
//왼쪽 하단 버튼 => 음악 재생 화면
//오른쪽 하단 버튼 => 계산기 화면 (1+2 = 3 파일)

//TabBar를 이용해 첫 번째 tab에 해당 GridView가 표기되도록
//구현하시고 두 번째 tab에

import 'package:audioplayers/audioplayers.dart';
import 'package:counter/dat13/quiz-page/quiz.dart';
import 'package:counter/dat13/view/grid.view.dart';
import 'package:counter/day11/textfield/buttonInput.dart';
import 'package:counter/day14/audioplayer.dart';
import 'package:counter/day9/gugudan.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "퀴즈풀이", home: GridPage());
  }
}

class GridPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('퀴즈풀이')),
      body: GridView.count(
        //crossAxisCoun = 한 격자 줄에 몇 개를 표기할 것인가
        crossAxisCount: 2,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Gugudan()),
                );
              },
              child: Text('구구단'),
            ),
          ),

          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Hotel()),
                );
              },
              child: Text('호텔'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AudioPage()),
                );
              },
              child: Text('음악재생하기'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ButtonInputTextFieldWidget(),
                  ),
                );
              },
              child: Text('계산기'),
            ),
          ),
        ],
      ),
    );
  }
}
