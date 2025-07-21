// 기본 플러터 앱에서 최상단 Appbar 부분에 [구구단 화면] 이라는
// 텍스트가 중앙 정렬되게 작성을 하고,
// body 부분에 1단 ~ 9단까지 구구단을 출력하는 기능을 하는
// 화면을 구성하세요.
// 1 x 1 = 1  2 x 1 = 2 .... 9 x 1 = 9
// ....
// 1 x 9 = 9  2 x 2 = 18 ... 9 x 9 = 81
// 이런식으로 화면이 출력되어야 합니다.

// Material 이라고 부르는 안드로이드 운영체제 전용 그래픽 라이브러리
import 'package:flutter/material.dart';

// Apple 전용 그래픽 라이브러리 도 있음!
// import 'package:flutter/cupertino.dart';

void main() {
  runApp(Gugudan());
}

class Gugudan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 구구단 작성할 수 있는 기능 만들기!
    String gugudan1 = ''; // 1 x 1 = 1 1 x 2 = 2 ... 값을 저장할 변수
    String gugudan2 = ''; // 1 x 1 = 1 1 x 2 = 2 ... 값을 저장할 변수
    String gugudan3 = ''; // 1 x 1 = 1 1 x 2 = 2 ... 값을 저장할 변수
    String gugudan4 = ''; // 1 x 1 = 1 1 x 2 = 2 ... 값을 저장할 변수
    String gugudan5 = ''; // 1 x 1 = 1 1 x 2 = 2 ... 값을 저장할 변수
    String gugudan6 = ''; // 1 x 1 = 1 1 x 2 = 2 ... 값을 저장할 변수
    String gugudan7 = ''; // 1 x 1 = 1 1 x 2 = 2 ... 값을 저장할 변수
    String gugudan8 = ''; // 1 x 1 = 1 1 x 2 = 2 ... 값을 저장할 변수
    String gugudan9 = ''; // 1 x 1 = 1 1 x 2 = 2 ... 값을 저장할 변수

    // 1 x 1 = 1 부터 9 x 9 = 81 까지의 값을 생성하는 기능 만들기!
    for (var dan = 1; dan <= 9; dan++) {
      for (var num = 1; num <= 9; num++) {
        if (dan == 1) {
          gugudan1 = gugudan1 + "$dan x $num = ${dan * num}\n";
        } else if (dan == 2) {
          gugudan2 = gugudan2 + "$dan x $num = ${dan * num}\n";
        } else if (dan == 3) {
          gugudan3 = gugudan3 + "$dan x $num = ${dan * num}\n";
        } else if (dan == 4) {
          gugudan4 = gugudan4 + "$dan x $num = ${dan * num}\n";
        } else if (dan == 5) {
          gugudan5 = gugudan5 + "$dan x $num = ${dan * num}\n";
        } else if (dan == 6) {
          gugudan6 = gugudan6 + "$dan x $num = ${dan * num}\n";
        } else if (dan == 7) {
          gugudan7 = gugudan7 + "$dan x $num = ${dan * num}\n";
        } else if (dan == 8) {
          gugudan8 = gugudan8 + "$dan x $num = ${dan * num}\n";
        } else if (dan == 9) {
          gugudan9 = gugudan9 + "$dan x $num = ${dan * num}\n";
        }
      }
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    showAlertDialog(context, gugudan1, "1단");
                  },
                  child: Text("1단"),
                ),
                TextButton(
                  onPressed: () {
                    showAlertDialog(context, gugudan2, "2단");
                  },
                  child: Text("2단"),
                ),
                TextButton(
                  onPressed: () {
                    showAlertDialog(context, gugudan3, "3단");
                  },
                  child: Text("3단"),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    showAlertDialog(context, gugudan4, "4단");
                  },
                  child: Text("4단"),
                ),
                TextButton(
                  onPressed: () {
                    showAlertDialog(context, gugudan5, "5단");
                  },
                  child: Text("5단"),
                ),
                TextButton(
                  onPressed: () {
                    showAlertDialog(context, gugudan6, "6단");
                  },
                  child: Text("6단"),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    showAlertDialog(context, gugudan7, "7단");
                  },
                  child: Text("7단"),
                ),
                TextButton(
                  onPressed: () {
                    showAlertDialog(context, gugudan8, "8단");
                  },
                  child: Text("8단"),
                ),
                TextButton(
                  onPressed: () {
                    showAlertDialog(context, gugudan9, "9단");
                  },
                  child: Text("9단"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
//우리가 현재 가지고 있는 값을 함수에게 전달하는 방법
// 가지고 있는 값-> name
// 가지고 있는 함수 -> void hello(){}
// 함수의 소괄호 부분에 우리가 가지고 있는 값을 전달해 줄 수 있는 변수를 작성한다.
// ex) void hello(String name){}
// hello 라는 함수에서 name 이라는 변수를 받아서 사용하겠다.

void showAlertDialog(BuildContext context, String gugudan, String title) async {
  String result = await showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: Text(gugudan),
        actions: <Widget>[
          TextButton(
            child: const Text('OK'),
            onPressed: () {
              Navigator.pop(context, "OK");
            },
          ),
          TextButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.pop(context, "Cancel");
            },
          ),
        ],
      );
    },
  );
}
