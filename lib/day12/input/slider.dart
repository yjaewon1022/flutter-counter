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
            max: 10,
            divisions: 5,
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
