import 'package:flutter/material.dart';

void main() {
  return runApp(TextButtonWidget());
}

class TextButtonWidget extends StatefulWidget {
  @override
  State<TextButtonWidget> createState() => TextButtonWidgetState();
}

class TextButtonWidgetState extends State<TextButtonWidget> {
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
