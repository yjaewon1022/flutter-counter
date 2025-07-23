import 'package:flutter/material.dart';

void main() {
  return runApp(TextButtonWidget());
}

class TextButtonWidget extends StatefulWidget {
  @override
  State<TextButtonWidget> createState() => TextButtonWidgetState();
}

class TextButtonWidgetState extends State<TextButtonWidget> {
  Color color = Colors.white;
  // 체크박스가 체크되어있는지 여부를 확인하는 변수
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: color,
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Column(
              children: [
                ElevatedButton.icon(
                  //아이콘 설정 방식
                  onPressed: () {
                    setState(() {
                      color = Colors.red;
                    });
                  },
                  icon: Icon(Icons.send),
                  label: Text('빨강'),
                ),
                ElevatedButton.icon(
                  //사용자가 누를수 없는 버튼
                  onPressed: null,
                  icon: Icon(Icons.send),
                  label: Text('누를수 없는 버튼'),
                ),
                //특정 조건을 만족했을때 누를수 있는 버튼
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    ElevatedButton(
                      onPressed: isChecked ? () {} : null,
                      child: Text("누를수 없는 버튼"),
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
