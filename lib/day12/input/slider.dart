import 'package:flutter/material.dart';

void main() {
  return runApp(SliderWidget());
}

class SliderWidget extends StatefulWidget {
  @override
  State<SliderWidget> createState() => SliderWidgetState();
}

class SliderWidgetState extends State<SliderWidget> {
  double value = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Slider(
            value: value,
            min: 0,
            max: 1,
            label: "슬라이더1",
            // divisions 를 이용하게 되면, 슬라이더를 구간별로 나눠서
            // 사용자가 선택할 수 있게 지정할 수 있다!
            divisions: 10,
            onChanged: (double newValue) {
              setState(() {
                value = newValue;
              });
            },
          ),
          Text("$value"),
        ],
      ),
    );
  }
}
