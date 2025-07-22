//ElevatedButton을 각각 무지개 색을 뜻하는 7개의 버튼을 생성하고
//각 버튼을 눌렀을 때 현재 휴대폰의 배경화면의 색을 해당 색으로 변경하는 기능을 구현하세요.
//해당 기능을 구현할 때에는 ScaFFold의 body: 부분을 Container로 감싼 뒤 구현하세요.

import 'package:flutter/material.dart';

void main() {
  return runApp(ElevatedButtonWidget());
}

class ElevatedButtonWidget extends StatefulWidget {
  @override
  State<ElevatedButtonWidget> createState() => ElevatedButtonWidgetState();
}

class ElevatedButtonWidgetState extends State<ElevatedButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                print;
                (Color: Colors.red);
              },
              child: Text('빨강'),
            ),
            ElevatedButton(
              onPressed: () {
                print;
                (Color: Colors.orange);
              },
              child: Text('주황'),
            ),
            ElevatedButton(
              onPressed: () {
                print;
                (Color: Colors.yellow);
              },
              child: Text('노랑'),
            ),
            ElevatedButton(
              onPressed: () {
                print;
                (Color: Colors.green);
              },
              child: Text('초록'),
            ),
            ElevatedButton(
              onPressed: () {
                print;
                (Color: Colors.blue);
              },
              child: Text('파랑'),
            ),
            ElevatedButton(
              onPressed: () {
                print;
                (Color: Colors.indigo);
              },
              child: Text('남'),
            ),
            ElevatedButton(
              onPressed: () {
                print;
                (Color: Colors.purple);
              },
              child: Text('보라'),
            ),
          ],
        ),
      ),
    );
  }
}
