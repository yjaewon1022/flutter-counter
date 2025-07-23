// Elevated Button을 각각 빨강, 주황 ... 보라 로 무지개 색을 뜻하는 7개의 버튼을 생성하고
// 각 버튼을 눌렀을 때 현재 휴대폰의 배경화면의 색을 해당 색으로 변경하는 기능을 구현하세요.
// 해당 기능을 구현할 때에는 Scaffold 의 body: 부분을 Container 로 감싼 뒤 구현하세요.
import 'package:flutter/material.dart';

void main() {
  return runApp(RainbowButtonWidget());
}

class RainbowButtonWidget extends StatefulWidget {
  @override
  State<RainbowButtonWidget> createState() {
    return RainbowButtonWidgetState();
  }
}

class RainbowButtonWidgetState extends State<RainbowButtonWidget> {
  // 버튼을 눌렀을 때 배경색을 변경해야 하니, 어떤 색을 눌렀는지 값을 담을 수 있는 변수를 선언
  Color color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // alignment = child 의 기본 위치 설정
        alignment: Alignment.centerLeft,
        // constraints = 배경 크기 설정
        constraints: BoxConstraints.expand(),
        color: color,
        child: Column(
          // mainAxisAlignment = Column의 아이템 위치 설정
          mainAxisAlignment: MainAxisAlignment.center,
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
                  color = Colors.orange;
                });
              },
              child: Text("주황"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  color = Colors.yellow;
                });
              },
              child: Text("노랑"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  color = Colors.green;
                });
              },
              child: Text("초록"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  color = Colors.blue;
                });
              },
              child: Text("파랑"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  color = Colors.black;
                });
              },
              child: Text("검정"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  color = Colors.purple;
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
