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
      body: IconButton(
        onPressed: () {
          print('버튼 클릭됨!');
        },
        icon: Icon(Icons.back_hand),
      ),
    );
  }
}
