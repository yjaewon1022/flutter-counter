//자기소개서를 입력하는 화면을 만들고자 합니다.
//사용자는 화면에서 다음의 기능을 구현해야 합니다.
//1. 이름을 입력하는 입력창(5글자 제한)
//2. 직업을 입력하는 입력창(20글자 제한)
//3.이메일 입력창 (number.dart 파일의 기능을 참고해서 구현)
//4.자기소개서 내용 (500글자 제한, 표기 줄 수는 최대 7줄까지 표기 할 수 있게 구현)

import 'package:flutter/material.dart';

void main() {
  return runApp(NoteWidget());
}

class NoteWidget extends StatefulWidget {
  @override
  State<NoteWidget> createState() => NoteWidgetState();
}

class NoteWidgetState extends State<NoteWidget> {
  late String _text = "";

  void changeText(String value) {
    setState(() {
      _text = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            TextField(
              maxLength: 5,
              decoration: InputDecoration(
                labelText: '이름',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                changeText(value);
              },
            ),
            TextField(
              maxLength: 20,
              decoration: InputDecoration(
                labelText: 'job',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                changeText(value);
              },
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'email',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                changeText(value);
              },
            ),
            Padding(padding: EdgeInsets.all(10)),
            TextField(
              maxLength: 500,
              maxLines: 7,
              decoration: InputDecoration(
                labelText: 'job',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                changeText(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
