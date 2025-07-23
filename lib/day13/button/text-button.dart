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
      body: TextButton(
        onPressed: () {
          print('버튼 클릭됨!');
        },
        child: Text('클릭'),
      ),
    );
  }
}
