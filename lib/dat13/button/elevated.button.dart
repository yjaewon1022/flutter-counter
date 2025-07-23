import 'package:flutter/material.dart';

void main() {
  return runApp(ElevatedButtonWidget());
}

class ElevatedButtonWidget extends StatefulWidget {
  @override
  State<ElevatedButtonWidget> createState() => ElevatedButtonWidgetState();
}

class ElevatedButtonWidgetState extends State<ElevatedButtonWidget> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                print('버튼 출력창');
              },
              child: Text('출력'),
            ),
            ElevatedButton.icon(
              onPressed: () {
                print('버튼 출력창');
              },
              icon: Icon(Icons.insert_comment_sharp),
              label: Text('보내기'),
            ),

            //특정 조건을 만족했을 때 버튼을 누를 수 있게 만들어보자
            //체크박스에 체크가 표시되었으면 버튼을 누를 수 있게 만들자
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
                  child: Text('누를 수 없는 버튼'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
