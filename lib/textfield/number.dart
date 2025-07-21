import 'package:flutter/material.dart';

void main() {
  return runApp(NumberTextFieldWidget());
}

class NumberTextFieldWidget extends StatefulWidget {
  @override
  State<NumberTextFieldWidget> createState() => NumberTextFieldState();
}

class NumberTextFieldState extends State<NumberTextFieldWidget> {
  late String _text = '';
  late String _text2 = '';

  void changeText(String value) {
    setState(() {
      _text = value;
    });
  }

  void changeText2(String value) {
    setState(() {
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
            ),
          ],
        ),
      ),
    );
  }
}
