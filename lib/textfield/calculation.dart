// quiz.
// 입력창 2개에 값을 넣으면
// 각각 +-/*한 결과를 텍스트로 출력해라
// [5 + 7의 결과는 12입니다.]

import 'package:flutter/material.dart';

void main() {
  return runApp(Calculation());
}

class Calculation extends StatefulWidget {
  @override
  State<Calculation> createState() => CalculationState();
}

class CalculationState extends State<Calculation> {
  // 계산 값 담아줄 변수 선언
  late String num1 = "0";
  late String num2 = "0";
  // late double plus;
  // late double minus;

  //   num2 = b;
  // plus = a + b;
  // minus = a - b;

  void calTextA(String a) {
    setState(() {
      num1 = a;
    });
  }

  void calTextB(String b) {
    setState(() {
      num2 = b;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(labelText: "첫번째 숫자 입력"),
              keyboardType: TextInputType.number,
              // onchanged : 입력값이 수정될때마다 가져올 수 있음
              onChanged: (a) {
                calTextA(a);
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: "두번째 숫자 입력"),
              keyboardType: TextInputType.number,
              // onchanged : 입력값이 수정될때마다 가져올 수 있음
              onChanged: (b) {
                calTextB(b);
              },
            ),

            // 결과 출력
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    "$num1 + $num2 의 결과는 ${int.parse(num1) + int.parse(num2)}입니다.",
                  ),
                  Text(
                    "$num1 - $num2 의 결과는 ${int.parse(num1) - int.parse(num2)}입니다.",
                  ),
                  Text(
                    "$num1 x $num2 의 결과는 ${int.parse(num1) * int.parse(num2)}입니다.",
                  ),
                  Text(
                    "$num1 / $num2 의 결과는 ${double.parse(num1) + double.parse(num2)}입니다.",
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
