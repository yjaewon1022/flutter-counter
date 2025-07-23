import 'package:flutter/material.dart';

void main() {
  return runApp(IconButtonWidget());
}

class IconButtonWidget extends StatefulWidget {
  @override
  State<IconButtonWidget> createState() => IconButtonWidgetState();
}

class IconButtonWidgetState extends State<IconButtonWidget> {
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
