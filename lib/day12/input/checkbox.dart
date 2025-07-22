import 'package:flutter/material.dart';

void main() {
  return runApp(CheckBoxWidget());
}

class CheckBoxWidget extends StatefulWidget {
  @override
  State<CheckBoxWidget> createState() => CheckBoxWdigetState();
}

class CheckBoxWdigetState extends State<CheckBoxWidget> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    //스위치의 켜짐,꺼짐 상태를 뜻하는 인스턴스 변수

    return Scaffold(
      body: Column(
        children: [
          Checkbox(
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
                //isChecked = value!;에서 !의 역할은?
                //'isChecked 라는 변수는 항상 값을 가질겁니다.'라고 컴퓨터에게 명시
                //=null이 있을 수 없다.
              });
            },
          ),
        ],
      ),
    );
  }
}
