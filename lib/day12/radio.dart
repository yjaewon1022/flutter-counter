// 라디오 버튼 : 여러 옵션 중 하나만 선택 가능

import 'package:flutter/material.dart';

void main() {
  runApp(RadioWidget());
}

class RadioWidget extends StatefulWidget {
  @override
  State<RadioWidget> createState() => RadioWidgetState();
}

class RadioWidgetState extends State<RadioWidget> {
  // 기본으로 선택할 버튼
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Radio(
                value: 1, //1번버튼
                groupValue: selected, //이 그룹은 selected의 값에 따른다.
                onChanged: (int? value) {
                  setState(() {
                    selected = value!; //선택변수 변경
                  });
                },
              ),
              Text("test1"),
            ],
          ),

          Row(
            children: [
              Radio(
                value: 2, //2번버튼
                groupValue: selected,
                onChanged: (int? value) {
                  setState(() {
                    selected = value!;
                  });
                },
              ),
              Text("test2"),
            ],
          ),
        ],
      ),
    );
  }
}
