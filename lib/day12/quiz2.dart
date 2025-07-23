// Elevated Button을 각각 빨강, 주황 ... 보라 로 무지개 색을 뜻하는 7개의 버튼을 생성하고
// 각 버튼을 눌렀을 때 현재 휴대폰의 배경화면의 색을 해당 색으로 변경하는 기능을 구현하세요.
// 해당 기능을 구현할 때에는 Scaffold 의 body: 부분을 Container 로 감싼 뒤 구현하세요.

import 'package:flutter/material.dart';

void main() {
  runApp(ColorBGWidget());
}

class ColorBGWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ColorBGWidgetState();
  }
}

class ColorBGWidgetState extends State<ColorBGWidget> {
  // 누른버튼 저장 변수생성 color클래스를 사용하였다.
  Color color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // 컨테이너 베경색에 color 변수 지정해줌
        color: color,
        constraints: BoxConstraints.expand(),
        // 버튼 생성
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  color = Colors.red;
                });
              },
              child: Text("빨강"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  color = Colors.red;
                });
              },
              child: Text("주황"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  color = Colors.orange;
                });
              },
              child: Text("노랑"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  color = Colors.yellow;
                });
              },
              child: Text("초록"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  color = Colors.green;
                });
              },
              child: Text("파랑"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  color = Colors.blue;
                });
              },
              child: Text("남색"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  color = Colors.red;
                });
              },
              child: Text("보라"),
            ),
          ],
        ),
      ),
    );
  }
}
