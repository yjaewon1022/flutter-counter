// Elevated Button을 각각 빨강, 주황 ... 보라 로 무지개 색을 뜻하는 7개의 버튼을 생성하고
// 각 버튼을 눌렀을 때 현재 휴대폰의 배경화면의 색을 해당 색으로 변경하는 기능을 구현하세요.
// 해당 기능을 구현할 때에는 Scaffold 의 body: 부분을 Container 로 감싼 뒤 구현하세요.
import 'package:flutter/material.dart';

void main() {
  return runApp(ColorButtonWidget());
}

class ColorButtonWidget extends StatefulWidget {
  @override
  State<ColorButtonWidget> createState() => ColorButtonWidgetState();
}

class ColorButtonWidgetState extends State<ColorButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.red,
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll<Color>(
                        Colors.red,
                      ),
                    ),
                    onPressed: () {
                      print('버튼 클릭됨!');
                    },
                    child: Text('빨강'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
