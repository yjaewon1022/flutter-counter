import 'package:flutter/material.dart';

void main() {
  return runApp(OutLineButtonWidget());
}

class OutLineButtonWidget extends StatefulWidget {
  @override
  State<OutLineButtonWidget> createState() => OutLineButtonWidgetState();
}

class OutLineButtonWidgetState extends State<OutLineButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: OutlinedButton(
          onPressed: () {
            print('버튼 클릭됨!');
          },
          child: Text('클릭'),
        ),
      ),
    );
  }
}
