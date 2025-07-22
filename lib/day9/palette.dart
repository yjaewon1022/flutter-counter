// 팔레트 만들기

import 'package:flutter/material.dart';
// Apple 전용 그래픽 라이브러리 도 있음!
// import 'package:flutter/cupertino.dart';

void main() {
  runApp(Palette());
}

class Palette extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // childen 안에 문자열을 넣을려면 text 위젯을 사용한다
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  child: TextButton(
                    onPressed: () {
                      showAlertDialog(context, "빨강");
                    },
                    child: const Text("빨강"),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.orange,
                  child: TextButton(
                    onPressed: () {
                      showAlertDialog(context, "주황");
                    },
                    child: Text("주황"),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                  child: TextButton(
                    onPressed: () {
                      showAlertDialog(context, "노랑");
                    },
                    child: Text("노랑"),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(width: 100, height: 100, color: Colors.green),
                Container(width: 100, height: 100, color: Colors.blue),
                Container(
                  width: 100,
                  height: 100,
                  color: const Color.fromARGB(255, 43, 9, 121),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(width: 100, height: 100, color: Colors.purple),
                Container(width: 100, height: 100, color: Colors.white),

                Container(width: 100, height: 100, color: Colors.black),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

///----------------------
void showAlertDialog(BuildContext context, String color) async {
  String result = await showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("제목"),
        content: Text("$color으로 바꾸시겠습니까?"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context, "확인");
              print("$color으로 변경됩니다.");
            },
            child: Text("확인"),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context, "닫기");
            },
            child: Text("닫기"),
          ),
        ],
      );
    },
  );
}
