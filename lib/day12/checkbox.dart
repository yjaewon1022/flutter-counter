// 체크박스 만들기

import 'package:flutter/material.dart';

void main() {
  runApp(CheckBoxWidget());
}

class CheckBoxWidget extends StatefulWidget {
  @override
  State<CheckBoxWidget> createState() => CheckBoxWidgetState();
}

class CheckBoxWidgetState extends State<CheckBoxWidget> {
  // 스위치 상태를 담을 인스턴스 변수
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Checkbox(
            value: isChecked,

            // activeColor : 토글 색상 변경
            activeColor: Colors.lightGreen,

            // bool 뒤에 물음표 쓰는 이유 : 체크박스는 bool 처럼 값이 두개만 있는게 아니고
            // null값도 가질 수 있기에 (체크o 체크x 중간상태)
            // tristate : true를 주면 value에 null을 가질 수 있다.
            // tristate사용법 : 인스턴스변수생성시 bool? 이렇게 써야함
            // tristate사용법 : isChecked = value; 로 value에 느낌표를 없앤다.
            tristate: true,
            onChanged: (bool? value) {
              setState(() {
                // value값은 항상 true/false 값을 가지기 때문에 느낌표 붙임.
                // value! : value는 항상 값을 가진다는 것을 컴퓨터에게 알림 (null불가)
                isChecked = value;
              });
            },
          ),
          // 체크시 글자 출력
          if (isChecked == true)
            Text(
              "보여집니다.",
              style: TextStyle(backgroundColor: Colors.lightGreen),
            ),
        ],
      ),
    );
  }
}
