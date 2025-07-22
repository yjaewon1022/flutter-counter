import 'package:flutter/material.dart';

void main() {
  return runApp(CheckBoxWidget());
}

class CheckBoxWidget extends StatefulWidget {
  @override
  State<CheckBoxWidget> createState() => CheckBoxWidgetState();
}

class CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool ischecked = false;
  @override
  Widget build(BuildContext context) {
    // 스위치 켜짐,꺼짐 상태를 뜻하는 인스턴스 변수
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Text("동의?"),
              Checkbox(
                value: ischecked,
                tristate: false,
                onChanged: (bool? value) {
                  setState(() {
                    ischecked = value ?? false;
                  });
                },
              ),
            ],
          ),
          if (ischecked == true) Text("보여집니다.", style: TextStyle()),
        ],
      ),
    );
  }
}
