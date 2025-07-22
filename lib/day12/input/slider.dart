import 'package:flutter/material.dart';

void main() {
  return runApp(SliderWidget());
}

class SliderWidget extends StatefulWidget {
  @override
  State<SliderWidget> createState() => SliderWdigetState();
}

class SliderWdigetState extends State<SliderWidget> {
  double value = 0.5;

  @override
  Widget build(BuildContext context) {
    //스위치의 켜짐,꺼짐 상태를 뜻하는 인스턴스 변수

    return Scaffold(
      body: Column(
        children: [
          Slider(
            value: value,
            min: 0,
            max: 1,
            label: '슬라이더',
            divisions: 10,
            onChanged: (double newValue) {
              setState(() {
                value = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
