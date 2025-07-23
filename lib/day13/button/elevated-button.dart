import 'package:flutter/material.dart';

void main() {
  return runApp(ElevatedButtonWidget());
}

class ElevatedButtonWidget extends StatefulWidget {
  @override
  State<ElevatedButtonWidget> createState() => ElevatedButtonWidgetState();
}

class ElevatedButtonWidgetState extends State<ElevatedButtonWidget> {
  // 체크박스가 체크되어있는지 여부를 확인하는 변수
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                print('버튼 클릭됨!');
              },
              child: Text('클릭'),
            ),
            ElevatedButton.icon(
              onPressed: () {
                print('버튼 클릭됨!');
              },
              icon: Icon(Icons.send),
              label: Text('보내기'),
            ),
            ElevatedButton(onPressed: null, child: Text("누를 수 없는 버튼")),
            // 특정 조건을 만족했을 때 버튼을 누를 수 있게 만들어보자!
            // 체크박스에 체크가 표시되어있으면 버튼을 누를 수 있게 만들어보자!
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      // value 뒤에 ! 를 붙여서 value 가 항상 값이 있을거다. 라고 컴퓨터에게 설명
                      isChecked = value!;
                    });
                  },
                ),
                ElevatedButton(
                  onPressed: isChecked ? () {} : null,
                  child: Text("누를 수 없는 버튼"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
