import 'package:flutter/material.dart';

void main() {
  return runApp(SwitchWidget());
}

class SwitchWidget extends StatefulWidget {
  @override
  State<SwitchWidget> createState() => SwitchWidgetState();
}

class SwitchWidgetState extends State<SwitchWidget> {
  // 스위치의 켜짐, 꺼짐 상태를 뜻하는 인스턴스 변수
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Switch(
        value: isOn,
        activeColor: Colors.red,
        onChanged: (bool value) {
          setState(() {
            isOn = value;
          });
        },
      ),
    );
  }
}
