// 구구단 만들기

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
    // 구구단 변수생성
    String gugudan1 = "";
    String gugudan2 = "";
    String gugudan3 = "";
    String gugudan4 = "";
    String gugudan5 = "";
    String gugudan6 = "";
    String gugudan7 = "";
    String gugudan8 = "";
    String gugudan9 = "";

    String title1 = "구구단 1단";
    String title2 = "구구단 2단";
    String title3 = "구구단 3단";
    String title4 = "구구단 4단";
    String title5 = "구구단 5단";
    String title6 = "구구단 6단";
    String title7 = "구구단 7단";
    String title8 = "구구단 8단";
    String title9 = "구구단 9단";

    // 1~9단 생성하기
    for (var dan = 1; dan <= 9; dan++) {
      for (var num = 1; num <= 9; num++) {
        if (dan == 1) {
          // 기존 문자열 + 새 문자열
          // \n으로 줄바꿈
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
        // childen 안에 문자열을 넣을려면 text 위젯을 사용한다
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  // style: TextButton.styleFrom(),
                  onPressed: () {
                    showAlertDialog(context, title1, gugudan1);
                  },
                  child: const Text('1단'),
                ),
                TextButton(
                  onPressed: () {
                    showAlertDialog(context, title2, gugudan2);
                  },
                  child: const Text('2단'),
                ),
                Text(gugudan3),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text(gugudan4), Text(gugudan5), Text(gugudan6)],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text(gugudan7), Text(gugudan8), Text(gugudan9)],
            ),
          ),
        ],
      ),
    );
  }
}

// 함수에 있는 값 가져오기 ------------------------
// 가져올 값 : name
// 갖고 있는 함수 : void hello () {}
// 쓰는 법 : void hello (String name) {}

// alert 알림창
void showAlertDialog(BuildContext context, String title, String gugudan) async {
  // 사용자가 누른 결과를 result에 담을 것임
  String result = await showDialog(
    context: context,
    barrierDismissible: false, //알림박스 밖을 눌렀을때 나가게 할것인지
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title), //알림제목
        content: Text(gugudan), //알림내용
        // actions 사용자 선택에 맞춰 반응할 메뉴
        actions: <Widget>[
          TextButton(
            child: const Text('OK'), // 누를수 있는 텍스트 버튼
            onPressed: () {
              //Navigator.pop 특별한동작없음
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
