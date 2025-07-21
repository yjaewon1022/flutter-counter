import 'package:flutter/material.dart';

void main() {
  return runApp(NumberTextFieldWidget());
}

class NumberTextFieldWidget extends StatefulWidget {
  @override
  State<NumberTextFieldWidget> createState() => NumberTextFieldState();
}

class NumberTextFieldState extends State<NumberTextFieldWidget> {
  late String _text1 = '';
  late String _text2 = '';

  void changeText(String value) {
    setState(() {
      //_text 인스턴스변수 안에 값을 넣어야함
      _text1 = value;
    });
  }

  void changeText2(String value) {
    setState(() {
      _text2 = value;
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
                label: Text('숫자를 입력하세요'),
                border: UnderlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              //onChanged 기능을 이용하면 사용자가 입력창의 내용을 바꿀 때 마다
              //안에 있는 함수가 생성!
              onChanged: (Text1) {
                changeText(Text1);
              },
            ),
            TextField(
              decoration: InputDecoration(
                label: Text('숫자를 입력하세요'),
                border: UnderlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              //onChanged 기능을 이용하면 사용자가 입력창의 내용을 바꿀 때 마다
              //안에 있는 함수가 생성!
              onChanged: (Text2) {
                changeText2(Text2);
              },
            ),

            Text(
              '$_text1 + $_text2 의 결과는 ${int.parse(_text1) + int.parse(_text2)} 입니다',
            ),
            Text(
              '$_text1 - $_text2의 결과는 ${int.parse(_text1) - int.parse(_text2)}입니다',
            ),
            Text(
              '$_text1 * $_text2의 결과는 ${int.parse(_text1) * int.parse(_text2)}입니다',
            ),
            Text(
              '$_text1 / $_text2의 결과는 ${int.parse(_text1) / int.parse(_text2)}입니다',
            ),
          ],
        ),
      ),
    );
  }
}
