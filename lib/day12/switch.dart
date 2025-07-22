import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SwitchWidget());
}

class SwitchWidget extends StatefulWidget {
  @override
  State<SwitchWidget> createState() => SwitchWidgetState();
}

class SwitchWidgetState extends State<SwitchWidget> {
  // 스위치 상태를 담을 인스턴스 변수
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Switch(
        value: isOn,
        // activeColor : 토글 색상 변경
        activeColor: Colors.amber,
        onChanged: (bool value) {
          setState(() {
            isOn = value;
          });
        },
      ),
    );
  }
}
