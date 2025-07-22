import 'package:flutter/material.dart';

void main() {
  return runApp(ElevatedButtonWidget());
}

class ElevatedButtonWidget extends StatefulWidget {
  @override
  State<ElevatedButtonWidget> createState() => ElevatedButtonWidgetState();
}

class ElevatedButtonWidgetState extends State<ElevatedButtonWidget> {
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
