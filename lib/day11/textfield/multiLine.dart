// multiLine 다중줄

//

import 'package:flutter/material.dart';

void main() {
  return runApp(MultiLIneTextFieldWidget());
}

// 텍스트필드에서 실시간으로 값을 받아와야 하므로 statefulWidget으로 진행
class MultiLIneTextFieldWidget extends StatefulWidget {
  @override
  State<MultiLIneTextFieldWidget> createState() => MultiLIneTextFieldState();
}

class MultiLIneTextFieldState extends State<MultiLIneTextFieldWidget> {
  // state값을 변경하는 기능
  // onchanged로 받아온 값을 setState에 넣어서 출력해줄 수 있다.

  //값받을 변수 선언
  late String _text = "";

  void changeText(String value) {
    setState(() {
      //
      _text = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold : 기본적으로 앱에 띄울 디자인화면 툴
    return Scaffold(
      body: Container(
        // 텍스트필드에 패딩값주기
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            TextField(
              //maxlines 입력창최대5줄까지 늘릴수 있다.----------------------------------
              maxLines: 5,
              //데코레이션으로 꾸림
              decoration: InputDecoration(
                labelText: "이름을 입력하세요.",
                // label: Text("이름을 입력해주세요"),  이렇게써도 동일함.
                border: OutlineInputBorder(), // 선
              ),
              // onchanged : 입력값이 수정될때마다 가져올 수 있음
              onChanged: (value) {
                // print(value);
                changeText(value);
              },
            ),
            Text(_text),
          ],
        ),
      ),
    );
  }
}
