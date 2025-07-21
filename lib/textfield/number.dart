import 'package:flutter/material.dart';

<<<<<<< HEAD
=======
// 입력창을 두 개 만들어서 각 숫자를 +, -, x, / 한 결과를
// 다음과 같이 텍스트 4줄로 표기되게 하세요
// [5 + 7 의 결과는 12 입니다.]
// [5 - 7 의 결과는 -2 입니다.]
// [5 * 7 의 결과는 35 입니다.]
// [5 / 7 의 결과는 0.~~ 입니다.]

>>>>>>> 5ad9fdb84176d6c4238a466b8e3e3b21ffcaafa1
void main() {
  return runApp(NumberTextFieldWidget());
}

class NumberTextFieldWidget extends StatefulWidget {
  @override
  State<NumberTextFieldWidget> createState() => NumberTextFieldState();
}

class NumberTextFieldState extends State<NumberTextFieldWidget> {
<<<<<<< HEAD
  late String _text = '';
  late String _text2 = '';

  void changeText(String value) {
    setState(() {
=======
  // 사용자가 입력창에 입력한 값을 저장하는 인스턴스 변수
  late String _text = "0";
  late String _text2 = "0";

  // state 의 값을 변경해주는 기능을 구현하면
  // 사용자가 입력창에 입력한 값을 실제로 화면에 띄워볼수도 있겠구나!
  // state 의 값을 변경해주는 기능을 변경하는 함수가 무엇이였지?
  // setState(() {});
  void changeText(String value) {
    setState(() {
      // _text 인스턴스변수 안에 값을 넣어야겠다!
>>>>>>> 5ad9fdb84176d6c4238a466b8e3e3b21ffcaafa1
      _text = value;
    });
  }

  void changeText2(String value) {
    setState(() {
<<<<<<< HEAD
=======
      // _text 인스턴스변수 안에 값을 넣어야겠다!
>>>>>>> 5ad9fdb84176d6c4238a466b8e3e3b21ffcaafa1
      _text2 = value;
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
              decoration: InputDecoration(
<<<<<<< HEAD
                label: Text("숫자를 입력"),
                border: UnderlineInputBorder(),
              ),
              onChanged: (value) {
                changeText(value);
              },
              keyboardType: TextInputType.number,
            ),

            TextField(
              decoration: InputDecoration(
                label: Text("숫자를 입력"),
                border: UnderlineInputBorder(),
              ),
              onChanged: (value) {
                changeText2(value);
              },
              keyboardType: TextInputType.number,
            ),
            Text(
              "$_text + $_text2의 결과는 ${int.parse(_text) + int.parse(_text2)}입니다.",
            ),
            Text(
              "$_text + $_text2의 결과는 ${int.parse(_text) - int.parse(_text2)}입니다.",
            ),
            Text(
              "$_text + $_text2의 결과는 ${int.parse(_text) * int.parse(_text2)}입니다.",
            ),
            Text(
              "$_text + $_text2의 결과는 ${int.parse(_text) / int.parse(_text2)}입니다.",
=======
                labelText: '숫자를 입력하세요',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              // onChanged 기능을 이용하면 사용자가 입력창의 내용을 바꿀 때 마다
              // 안에 있는 함수가 실행이 되는구나!
              onChanged: (value) {
                changeText(value);
              },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: '숫자를 입력하세요',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              // onChanged 기능을 이용하면 사용자가 입력창의 내용을 바꿀 때 마다
              // 안에 있는 함수가 실행이 되는구나!
              onChanged: (value) {
                changeText2(value);
              },
            ),
            // [5 + 7 의 결과는 12 입니다.]
            // [5 - 7 의 결과는 -2 입니다.]
            // [5 * 7 의 결과는 35 입니다.]
            // [5 / 7 의 결과는 0.~~ 입니다.]
            Text(
              "$_text + $_text2 의 결과는 ${int.parse(_text) + int.parse(_text2)} 입니다.",
            ),
            Text(
              "$_text - $_text2 의 결과는 ${int.parse(_text) - int.parse(_text2)} 입니다.",
            ),
            Text(
              "$_text * $_text2 의 결과는 ${int.parse(_text) * int.parse(_text2)} 입니다.",
            ),
            Text(
              "$_text / $_text2 의 결과는 ${int.parse(_text) / int.parse(_text2)} 입니다.",
>>>>>>> 5ad9fdb84176d6c4238a466b8e3e3b21ffcaafa1
            ),
          ],
        ),
      ),
    );
  }
}
