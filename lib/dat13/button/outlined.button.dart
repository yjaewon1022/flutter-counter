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
      body: ElevatedButton(
        onPressed: () {
          print('버튼 출력창');
        },
        child: Text('출력'),
      ),
    );
  }
}
