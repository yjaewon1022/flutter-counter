import 'package:flutter/material.dart';

void main() {
  return runApp(ElevatedButtonWidget());
}

class ElevatedButtonWidget extends StatefulWidget {
  @override
  State<ElevatedButtonWidget> createState() => ElevatedButtonWidgetState();
}

class ElevatedButtonWidgetState extends State<ElevatedButtonWidget> {
  // 체크박스 값 받아올 변수 생성
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            // -----------------------
            ElevatedButton(
              onPressed: () {
                print('버튼 클릭됨!');
              },
              child: Text('클릭'),
            ),

            //ElevatedButton.icon 사용법 --------------
            //onpressed icon label를 써준다.
            // 버튼내용: child가 아니라 label을 쓴다.
            ElevatedButton.icon(
              onPressed: () {
                print('엘리베이티드버튼.아이콘');
              },
              icon: Icon(Icons.send),
              label: Text('보내기'),
            ),
            // onPressed값을 null로 주면 누를 수 없다. -----------
            ElevatedButton(onPressed: null, child: Text("누를수 없는 버튼")),
            // 특정 조건을 만족했을 때 누를 수 있는 버튼 만들기
            // 체크박스에 체크: 누름o 체크x:누름x
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
                  // 체크하면 함수실행, 안되면 null로 비활성화
                  onPressed: isChecked ? () {} : null,
                  child: Text("체크하고 동의하기"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
