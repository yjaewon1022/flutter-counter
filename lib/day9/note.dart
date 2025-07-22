// 자기소개서를 입력하는 화면을 만들고자 합니다.
// 사용자는 화면에서 다음의 기능을 구현해야 합니다.
// 1. 이름을 입력하는 입력창 ( 5글자 제한 )
// 2. 직업을 입력하는 입력창 ( 20글자 제한 )
// 3. 이메일 입력창 ( number.dart 파일의 기능을 참고해서 구현할 것 )
// 4. 자기소개서 내용 ( 500글자 제한, 표기 줄 수는 최대 7줄까지 표기할 수 있게 구현 )

import 'package:flutter/material.dart';

void main() {
  return runApp(NoteTextFieldWidget());
}

// StatelessWidget 과 StatefulWidget 중 어느 것을 써야할까?
// 앱에서 실시간으로 사용자가 입력한 값을 가져와서 화면에 띄어줘야 하기 때문에
// StatefulWidget을 사용해야 합니다.
class NoteTextFieldWidget extends StatefulWidget {
  @override
  State<NoteTextFieldWidget> createState() => NoteTextFieldState();
}

class NoteTextFieldState extends State<NoteTextFieldWidget> {
  // 사용자가 입력창에 입력한 값을 저장하는 인스턴스 변수
  late String _text = "";

  // state 의 값을 변경해주는 기능을 구현하면
  // 사용자가 입력창에 입력한 값을 실제로 화면에 띄어볼 수도 있겠구나!
  // state 의 값을 변경해주는 기능을 변경하는 함수가 무엇이였지?
  //  setState(() {});
  void changeText(String value) {
    setState(() {
      // _text 인스턴스변수 안에 값을 넣어야겠다!
      _text = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold 가 무엇인가?
    // 기본적으로 앱에서 보여질 디자인 화면 틀 이라고 생각하시면 됩니다.
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            TextField(
              maxLength: 5,
              decoration: InputDecoration(
                labelText: '이름을 입력하세요',
                border: OutlineInputBorder(),
              ),
              // onChanged 기능을 이용하려면 사용자가 입력창의 내용을 바꿀 때 마다
              // 안에 있는 함수가 실행이 되는구나!
              onChanged: (value) {
                changeText(value);
              },
            ),
            TextField(
              maxLength: 20,
              decoration: InputDecoration(
                labelText: '직업을 입력하세요',
                border: OutlineInputBorder(),
              ),
              // onChanged 기능을 이용하려면 사용자가 입력창의 내용을 바꿀 때 마다
              // 안에 있는 함수가 실행이 되는구나!
              onChanged: (value) {
                changeText(value);
              },
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: '이메일을 입력하세요',
                border: OutlineInputBorder(),
              ),
              // onChanged 기능을 이용하려면 사용자가 입력창의 내용을 바꿀 때 마다
              // 안에 있는 함수가 실행이 되는구나!
              onChanged: (value) {
                changeText(value);
              },
            ),
            Padding(padding: EdgeInsetsGeometry.all(10)),
            TextField(
              maxLength: 500,
              maxLines: 7,
              decoration: InputDecoration(
                labelText: '자기소개서 내용을 입력하세요',
                border: OutlineInputBorder(),
              ),
              // onChanged 기능을 이용하려면 사용자가 입력창의 내용을 바꿀 때 마다
              // 안에 있는 함수가 실행이 되는구나!
              onChanged: (value) {
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
