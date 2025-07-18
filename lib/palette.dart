// 팔레트 만들기

import 'package:flutter/material.dart';
// Apple 전용 그래픽 라이브러리 도 있음!
// import 'package:flutter/cupertino.dart';

void main() {
  runApp(Palette());
}

class Palette extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Title',
      home: Scaffold(
        appBar: AppBar(title: const Center(child: Text("좋아하는 색상 고르기"))),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // childen 안에 문자열을 넣을려면 text 위젯을 사용한다
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(width: 100, height: 100, color: Colors.red),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.orange,
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.yellow,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(width: 100, height: 100, color: Colors.green),
                        Container(width: 100, height: 100, color: Colors.blue),
                        Container(
                          width: 100,
                          height: 100,
                          color: const Color.fromARGB(255, 43, 9, 121),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.purple,
                        ),
                        Container(width: 100, height: 100, color: Colors.white),

                        Container(width: 100, height: 100, color: Colors.black),
                      ],
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
