import 'package:flutter/material.dart';

void main() {
  return runApp(RainbowButtonWidget());
}

class RainbowButtonWidget extends StatefulWidget {
  @override
  State<RainbowButtonWidget> createState() => RainbowButtonWidgetState();
}

class RainbowButtonWidgetState extends State<RainbowButtonWidget> {
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          color = Colors.red;
                        });
                      },
                      child: Text('빨강'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print('Orange');
                      },
                      child: Text('주황'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print('Yellow');
                      },
                      child: Text('노랑'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        print('Green');
                      },
                      child: Text('초록'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print('Blue');
                      },
                      child: Text('파랑'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print('Purple');
                      },
                      child: Text('보라'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
