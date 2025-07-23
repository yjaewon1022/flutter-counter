// testfield 사용해보기

import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

void main() {
  return runApp(NormalTextFieldWidget());
}

// 텍스트필드에서 실시간으로 값을 받아와야 하므로 statefulWidget으로 진행
class NormalTextFieldWidget extends StatefulWidget {
  @override
  State<NormalTextFieldWidget> createState() => NormalTextFieldState();
}

class NormalTextFieldState extends State<NormalTextFieldWidget> {
  // state값을 변경하는 기능
  // onchanged로 받아온 값을 setState에 넣어서 출력해줄 수 있다.

  //값받을 변수 선언
  late String _text = "";
  late String _text2 = "";

  void changeText(String value) {
    setState(() {
      //
      _text = value;
    });
  }

  // 컨트롤러로 값 한번에 받기 -----------------------
  // (실시간으로 받으면 데이터 손실이다.)
  var controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Scaffold : 기본적으로 앱에 띄울 디자인화면 툴
    return Scaffold(
      body: Container(
        // 텍스트필드에 패딩값주기
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            // 방법1 : onchanged로 실시간 값 받기 --------------
            TextField(
              //컨트롤러 사용
              controller: controller,
              //데코레이션으로 꾸림
              decoration: InputDecoration(
                labelText: "이름을 입력하세요.",
                // label: Text("이름을 입력해주세요"),  이렇게써도 동일함.
                border: OutlineInputBorder(), // 선
              ),
              // onchanged : 입력값이 수정될때마다 가져올 수 있음
              onChanged: (value) {
                print(value);
                changeText(value);
              },
            ),
            // 방법2 : 컨트롤러로 한번에 받기--------------
            //텍스트필드 하단에 출력해줘
            Text("setState로 실시간 값 받기 : $_text"),
            //버튼 누르면 값을 넣어줘
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _text2 = controller.text;
                });
              },
              child: Text("제출"),
            ),
            Text("컨트롤러 사용 :  $_text2"),
          ],
        ),
      ),
    );
  }
}
