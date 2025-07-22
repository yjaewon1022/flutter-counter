// 슬라이더 위젯
// 음량을 줄이듯

import 'package:flutter/material.dart';

void main() {
  runApp(SliderWidget());
}

class SliderWidget extends StatefulWidget {
  @override
  State<SliderWidget> createState() => SliderWidgetState();
}

class SliderWidgetState extends State<SliderWidget> {
  // 기본으로 선택할 버튼
  double value = 0.5;
  double value2 = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Slider(
            value: value,
            min: 0, //최저점
            max: 1, //최고점
            onChanged: (double newValue) {
              setState(() {
                value = newValue;
              });
              value = newValue;
            },
          ),
          Text("$value"),

          // divisions으로 구간별 적용 -----------
          Slider(
            value: value2,
            min: 0, //최저점
            max: 5, //최고점
            divisions: 5,
            activeColor: Colors.red,
            // 라벨지정-------------
            label: "라벨지정",
            onChanged: (double newValue) {
              setState(() {
                value2 = newValue;
              });
              value2 = newValue;
            },
          ),
          Text("divisions사용 $value2"),
        ],
      ),
    );
  }
}
