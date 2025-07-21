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
<<<<<<< HEAD
                    showAlertDialog(context, "RED");
=======
                    showAlertDialog(context);
>>>>>>> 5ad9fdb84176d6c4238a466b8e3e3b21ffcaafa1
                  },
                  child: Text("빨강"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.orange,
<<<<<<< HEAD
                child: TextButton(
                  onPressed: () {
                    showAlertDialog(context, "ORANGE");
                  },
                  child: Text("주황"),
                ),
=======
                child: TextButton(onPressed: () {}, child: Text("주황")),
>>>>>>> 5ad9fdb84176d6c4238a466b8e3e3b21ffcaafa1
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
<<<<<<< HEAD
                child: TextButton(
                  onPressed: () {
                    showAlertDialog(context, "YELLOW");
                  },
                  child: Text("노랑"),
                ),
=======
                child: TextButton(onPressed: () {}, child: Text("노랑")),
>>>>>>> 5ad9fdb84176d6c4238a466b8e3e3b21ffcaafa1
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

<<<<<<< HEAD
void showAlertDialog(BuildContext context, String color) async {
  String result = await showDialog(
=======
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
>>>>>>> 5ad9fdb84176d6c4238a466b8e3e3b21ffcaafa1
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
<<<<<<< HEAD
        title: Text("Color"),
        content: Text(color),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context, "닫기");
=======
        title: Text("제목"),
        content: Text("내용"),
        actions: [
          TextButton(
            onPressed: () {
              // Navigator.pop -> 현재 네비게이터를 뒤로 한 칸 이동한다 ( 뒤로가기 기능 )
              Navigator.pop(context, '닫기');
>>>>>>> 5ad9fdb84176d6c4238a466b8e3e3b21ffcaafa1
            },
            child: Text("닫기"),
          ),
        ],
      );
    },
  );
}
