import 'package:flutter/material.dart';

void main() {
  runApp(ColorSelect());
}

class ColorSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: TextButton(
                  onPressed: () {
                    showAlertDialog(context);
                  },
                  child: Text("빨강"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.orange,
                child: TextButton(onPressed: () {}, child: Text("주황")),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
                child: TextButton(onPressed: () {}, child: Text("노랑")),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(width: 100, height: 100, color: Colors.green),
              Container(width: 100, height: 100, color: Colors.blue),
              Container(width: 100, height: 100, color: Colors.indigo),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(width: 100, height: 100, color: Colors.purple),
              Container(width: 100, height: 100, color: Colors.blueGrey),
              Container(width: 100, height: 100, color: Colors.black),
            ],
          ),
        ],
      ),
    );
  }
}

// 우리가 현재 가지고 있는 값을 함수에게 전달하는 방법
// 가지고 있는 값 -> "빨강" color 라는 변수에 담을 수 있겠네?
// 가지고 있는 함수 -> void showAlertDialog() {}
// 함수의 소괄호 부분에 우리가 가지고 있는 값을 전달해 줄 수 있는 변수를 작성한다
// ex) void showAlertDialog(String color) {}
// 이 코드는 다음과 같이 해석할 수 있다.
// hello 라는 함수에서는 name 이라는 변수를 받아서 사용하겠다.

void showAlertDialog(BuildContext context) async {
  String result = await showDialog(
    // 알림창이 떴을 때 회색 배경을 눌러도 아무런 반응이 없게 하고 싶다
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("제목"),
        content: Text("내용"),
        actions: [
          TextButton(
            onPressed: () {
              // Navigator.pop -> 현재 네비게이터를 뒤로 한 칸 이동한다 ( 뒤로가기 기능 )
              Navigator.pop(context, '닫기');
            },
            child: Text("닫기"),
          ),
        ],
      );
    },
  );
}
