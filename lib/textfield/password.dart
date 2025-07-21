import 'package:flutter/material.dart';

void main() {
  return runApp(PasswordTextfieldWidget());
}

class PasswordTextfieldWidget extends StatefulWidget {
  @override
  State<PasswordTextfieldWidget> createState() => NormalTextfieldState();
}

class NormalTextfieldState extends State<PasswordTextfieldWidget> {
  late String _text = '';

  void changeText(String value) {
    setState(() {
      //_text 인스턴스변수 안에 값을 넣어야함
      _text = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    //Scaffold란 무엇인가
    //기본적으로 앱에 보여야 할 디자인 화면 툴
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                label: Text('이름을 입력하세요'),
                border: UnderlineInputBorder(),
              ),
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
