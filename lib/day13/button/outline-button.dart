import 'package:flutter/material.dart';

void main() {
  return runApp(TextButtonWidget());
}

class TextButtonWidget extends StatefulWidget {
  @override
  State<TextButtonWidget> createState() => TextButtonWidgetState();
}

class TextButtonWidgetState extends State<TextButtonWidget> {
  Color color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: color,
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      color = Colors.red;
                    });
                  },
                  child: Text('빨강'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
