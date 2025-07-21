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
      // 숫자 지우기
      if (_text.isNotEmpty && value == "") {
        _text = _text.substring(0, _text.length - 1);
      } else {
        _text += value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            // TextField(
            //   controller: controller,
            //   decoration: InputDecoration(
            //     labelText: '숫자 입력기',
            //     border: OutlineInputBorder(),
            //   ),
            // ),
            Text(_text),
            Column(
              children: [
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () => changeText("1"),
                      child: Text("1"),
                    ),
                    ElevatedButton(
                      onPressed: () => changeText("2"),
                      child: Text("2"),
                    ),
                    ElevatedButton(
                      onPressed: () => changeText("3"),
                      child: Text("3"),
                    ),
                    ElevatedButton(
                      onPressed: () => changeText(""),
                      child: Text("지우기"),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
