import 'package:flutter/material.dart';

void main() {
  return runApp(RadioWidget());
}

class RadioWidget extends StatefulWidget {
  @override
  State<RadioWidget> createState() => RadioWdigetState();
}

class RadioWdigetState extends State<RadioWidget> {
  int selected = 1;

  @override
  Widget build(BuildContext context) {
    //스위치의 켜짐,꺼짐 상태를 뜻하는 인스턴스 변수

    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Radio(
                value: 1,
                groupValue: selected,
                onChanged: (int? value) {
                  setState(() {
                    selected = value!;
                  });
                },
              ),
              Text('첫 번째 라디오 버튼'),
            ],
          ),
          Row(
            children: [
              Radio(
                value: 2,
                groupValue: selected,
                onChanged: (int? value) {
                  setState(() {
                    selected = value!;
                  });
                },
              ),
              Text('두 번째 라디오 버튼'),
            ],
          ),
        ],
      ),
    );
  }
}
