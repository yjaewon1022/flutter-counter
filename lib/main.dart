// 구구단 만들기

// Material 이라고 부르는 안드로이드 운영체제 전용 그래픽 라이브러리
import 'package:flutter/material.dart';
// Apple 전용 그래픽 라이브러리 도 있음!
// import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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

    return MaterialApp(
      title: 'App Title',
      home: Scaffold(
        appBar: AppBar(title: const Center(child: Text("구구단 화면"))),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // childen 안에 문자열을 넣을려면 text 위젯을 사용한다
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(gugudan1),
                        Text(gugudan2),
                        Text(gugudan3),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(gugudan4),
                        Text(gugudan5),
                        Text(gugudan6),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(gugudan7),
                        Text(gugudan8),
                        Text(gugudan9),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
