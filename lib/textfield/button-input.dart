import 'package:flutter/material.dart';

void main() {
  return runApp(ButtonInputTextFieldWidget());
}

class ButtonInputTextFieldWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ButtonInputTextFieldState();
}

class ButtonInputTextFieldState extends State<ButtonInputTextFieldWidget> {
  late String _text = "";
  var controller = TextEditingController();

  void changeText(String value) {
    setState(() {
      _text = value;
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
              controller: controller,
              decoration: InputDecoration(
                labelText: '이름을 입력하세요',
                border: OutlineInputBorder(),
              ),
            ),
            Text(_text),
            Column(children: []),
          ],
        ),
      ),
    );
  }
}
