import 'package:flutter/material.dart';

void main() {
  return runApp(NumberTextField());
}

class NumberTextField extends StatefulWidget {
  @override
  State<NumberTextField> createState() => NumberTextFieldState();
}

class NumberTextFieldState extends State<NumberTextField> {
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
    return Scaffold(
      body: Container(
        // 텍스트필드에 패딩값주기
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            TextField(
              //데코레이션으로 꾸림
              decoration: InputDecoration(
                labelText: "이름을 입력하세요.",
                // label: Text("이름을 입력해주세요"),  이렇게써도 동일함.
                border: OutlineInputBorder(), // 선
              ),
              keyboardType: TextInputType.number,
              // onchanged : 입력값이 수정될때마다 가져올 수 있음
              onChanged: (value) {
                // print(value);
                changeText(value);
              },
            ),
            // 텍스트필드 하단에 출력해줘--------------
            Text(_text),
          ],
        ),
      ),
    );
  }
}
