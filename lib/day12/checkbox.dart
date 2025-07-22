import 'package:flutter/material.dart';

void main() {
  return runApp(CheckBoxWidget());
}

class CheckBoxWidget extends StatefulWidget {
  @override
  State<CheckBoxWidget> createState() => CheckBoxWidgetState();
}

class CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("어쩌구 저꾸구 동의하십니까?"),
              Checkbox(
                value: isChecked,
                // tristate 라는 것에 true 값을 주면, value 를 null 로 만들 수 있다.
                tristate: true,
                // null 이 되는 경우는 다음과 같다.
                // 버튼을 눌러서 체크가 표시된 경우 -> value = true
                // 버튼을 눌러서 체크가 사라진 경우 -> value = false
                // 버튼을 눌렀을 때 체크가 아니라 다른 상태 (- 등) 를 표기하는 경우
                onChanged: (bool? value) {
                  setState(() {
                    // isChecked = value!; 에서 !의 역할이 무엇인가?
                    // isChecked 라는 변수는 항상 값을 가질겁니다. 라고 컴퓨터에게 명시하는 용도
                    // 항상 값을 가질겁니다. = null 이 있을 수 없다.
                    isChecked = value;
                  });
                },
              ),
              // childer [] 안에서 조건문을 사용할 수 있음
              if (isChecked == true) Text("보여집니다.", style: TextStyle()),
            ],
          ),
        ],
      ),
    );
  }
}
