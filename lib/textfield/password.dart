import 'package:flutter/material.dart';

void main() {
  return runApp(PasswordTextFieldWidget());
}

class PasswordTextFieldWidget extends StatefulWidget {
  @override
  State<PasswordTextFieldWidget> createState() => PasswordTextFieldState();
}

class PasswordTextFieldState extends State<PasswordTextFieldWidget> {
  late String _text = "0";
  late String _text2 = "0";

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

  void changeText2(String value) {
    setState(() {
      // _text 인스턴스변수 안에 값을 넣어야겠다!
      _text2 = value;
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
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: '숫자를 입력하세요',
                border: OutlineInputBorder(),
              ),
              // onChanged 기능을 이용하려면 사용자가 입력창의 내용을 바꿀 때 마다
              // 안에 있는 함수가 실행이 되는구나!
              onChanged: (value) {
                changeText(value);
              },
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: '숫자를 입력하세요',
                border: OutlineInputBorder(),
              ),
              // onChanged 기능을 이용하려면 사용자가 입력창의 내용을 바꿀 때 마다
              // 안에 있는 함수가 실행이 되는구나!
              onChanged: (value) {
                changeText2(value);
              },
            ),
            // [5 + 7 의 결과는 12 입니다.]
            // [5 - 7 의 결과는 -2 입니다.]
            // [5 x 7 의 결과는 35 입니다.]
            // [5 / 7 의 결과는 0.~~ 입니다.]
            Text(
              "$_text + $_text2 의 결과는 ${int.parse(_text) + int.parse(_text2)} 입니다.",
            ),
            Text(
              "$_text - $_text2 의 결과는 ${int.parse(_text) - int.parse(_text2)} 입니다.",
            ),
            Text(
              "$_text x $_text2 의 결과는 ${int.parse(_text) * int.parse(_text2)} 입니다.",
            ),
            Text(
              "$_text / $_text2 의 결과는 ${int.parse(_text) / int.parse(_text2)} 입니다.",
            ),
          ],
        ),
      ),
    );
  }
}
