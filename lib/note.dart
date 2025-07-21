// 자기소개서 입력화면 quiz.~~~~~~
// 1.이름 (5글자제한)
// 2.직업 (20글자제한)
// 3.이메일 입력창 (number.dart 참고)
// 4.자기소개서 내용 (500글자제한,최대7줄)

import 'package:flutter/material.dart';

void main() {
  return runApp(NoteWidget());
}

class NoteWidget extends StatefulWidget {
  @override
  State<NoteWidget> createState() => NoteWidgetState();
}

class NoteWidgetState extends State<NoteWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Padding(padding: EdgeInsetsGeometry.all(4)),
            TextField(
              maxLength: 5,
              decoration: InputDecoration(
                labelText: "이름",
                border: OutlineInputBorder(),
              ),
            ),
            Padding(padding: EdgeInsetsGeometry.all(4)),
            TextField(
              maxLength: 20,
              decoration: InputDecoration(
                labelText: "직업",
                border: OutlineInputBorder(),
              ),
            ),
            Padding(padding: EdgeInsetsGeometry.all(4)),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                border: OutlineInputBorder(),
              ),
            ),
            Padding(padding: EdgeInsetsGeometry.all(14)),
            TextField(
              maxLength: 500,
              maxLines: 7,
              decoration: InputDecoration(
                labelText: "자기소개",
                border: OutlineInputBorder(),
              ),
            ),
            Padding(padding: EdgeInsetsGeometry.all(20)),

            OutlinedButton(
              onPressed: () {
                showAlertDialog(context);
              },
              child: Text("완료"),
            ),
          ],
        ),
      ),
    );
  }
}

//그냥 해봤어
void showAlertDialog(BuildContext context) async {
  // 사용자가 누른 결과를 result에 담을 것임
  String result = await showDialog(
    context: context,
    barrierDismissible: false, //알림박스 밖을 눌렀을때 나가게 할것인지
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Alert Dialog Sample'), //알림제목
        content: const Text('Select Button You Want'), //알림내용
        // actions 사용자 선택에 맞춰 반응할 메뉴
        actions: <Widget>[
          TextButton(
            child: const Text('OK'), // 누를수 있는 텍스트 버튼
            onPressed: () {
              //Navigator.pop 특별한동작없음
              Navigator.pop(context, "OK");
            },
          ),
          TextButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.pop(context, "Cancel");
            },
          ),
        ],
      );
    },
  );
}
