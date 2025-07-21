import 'package:flutter/material.dart';

void main() {
  return runApp(HelloWidget());
}

// p523

class HelloWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 32)),
          onPressed: () {
            showAlertDialog(context);
          },
          child: const Text('Hello, Press Here!'),
        ),
      ),
    );
  }
}

// p523
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
