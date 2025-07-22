import 'package:flutter/material.dart';

void main() {
  return runApp(SwitchWidget());
}

class SwitchWidget extends StatefulWidget {
  @override
  State<SwitchWidget> createState() => SwitchWidgetState();
}

class SwitchWidgetState extends State<SwitchWidget> {
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    // 스위치 켜짐,꺼짐 상태를 뜻하는 인스턴스 변수
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Switch(
          value: isOn,
          activeColor: Colors.red,
          onChanged: (bool value) {
            setState(() {
              isOn = value;
            });
          },
        ),
      ),
    );
  }
}
