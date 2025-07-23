import 'package:flutter/material.dart';

void main() {
  return runApp(OutlinedButtonWidget());
}

class OutlinedButtonWidget extends StatefulWidget {
  @override
  State<OutlinedButtonWidget> createState() => OutlinedButtonWidgetState();
}

class OutlinedButtonWidgetState extends State<OutlinedButtonWidget> {
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
