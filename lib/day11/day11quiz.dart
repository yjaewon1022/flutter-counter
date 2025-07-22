// button-input.dart를 참고하여 계산기 만들기
// 0~9 입력가능
//+-*/ 버튼 추가
// 숫자입력 후 changeText에서 받아온 값이 +-*/중 하나라면
// 입력받은 숫자를 num1에 넣는다.
// 이후 입력받은 숫자는 =을 누른뒤에 num2로 넣는다
// 계산 실행하여 출력

import 'package:flutter/material.dart';

void main() {
  return runApp(Calcul());
}

class Calcul extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CalculState();
}

class CalculState extends State<Calcul> {
  var controller = TextEditingController();
  // 숫자를 담아줄 변수 선언
  late var num1;
  late var num2;
  late var result;
  late var operator;

  void changeText(String value) {
    // setState(() {})
    setState(() {
      // 숫자 지우기
      // 입력창이 비어있지않고 + 입력값이 ""일때, 마지막글자 삭제

      if (controller.text.isNotEmpty && value == "") {
        controller.text = controller.text.substring(
          0,
          controller.text.length - 1,
        );
      } else {
        //
        controller.text += value;

        // 계산식 입력시 앞에 숫자를 num1에 넣기
        if (value == "+") {
          num1 = controller.text.substring(0, controller.text.length - 1);
          operator = value;
        } else if (value == "-") {
          num1 = controller.text.substring(0, controller.text.length - 1);
          operator = value;
        } else if (value == "*") {
          num1 = controller.text.substring(0, controller.text.length - 1);
          operator = value;
        } else if (value == "/") {
          num1 = controller.text.substring(0, controller.text.length - 1);
          operator = value;
        }
        //num2 저장
        else if (value == "=") {
          List list = [];
          //기호 단위로 나눠서 리스트에 저장
          list = controller.text.split(operator);
          print(num1);
          num1 = list.first;
          num2 = list.last.substring(0, controller.text.length - 1);

          switch (operator) {
            case "+":
              result = double.parse(num1) + double.parse(num2);
              break;
            case "-":
              result = double.parse(num1) - double.parse(num2);
              break;
            case "*":
              result = double.parse(num1) * double.parse(num2);
              break;
            case "/":
              result = double.parse(num1) / double.parse(num2);
              break;
            default:
              break;
          }
        }
        controller.text += result.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: '숫자 입력기',
                border: OutlineInputBorder(),
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () => changeText("7"),
                      child: Text("7"),
                    ),
                    ElevatedButton(
                      onPressed: () => changeText("8"),
                      child: Text("8"),
                    ),
                    ElevatedButton(
                      onPressed: () => changeText("9"),
                      child: Text("9"),
                    ),
                    ElevatedButton(
                      onPressed: () => changeText(""),
                      child: Text("지우기"),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () => changeText("4"),
                      child: Text("4"),
                    ),
                    ElevatedButton(
                      onPressed: () => changeText("5"),
                      child: Text("5"),
                    ),
                    ElevatedButton(
                      onPressed: () => changeText("6"),
                      child: Text("6"),
                    ),
                    ElevatedButton(
                      onPressed: () => changeText("+"),
                      child: Text("+"),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () => changeText("1"),
                      child: Text("1"),
                    ),
                    ElevatedButton(
                      onPressed: () => changeText("2"),
                      child: Text("2"),
                    ),
                    ElevatedButton(
                      onPressed: () => changeText("3"),
                      child: Text("3"),
                    ),
                    ElevatedButton(
                      onPressed: () => changeText("-"),
                      child: Text("-"),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () => changeText("0"),
                      child: Text("0"),
                    ),
                    ElevatedButton(
                      onPressed: () => changeText("/"),
                      child: Text("/"),
                    ),
                    ElevatedButton(
                      onPressed: () => changeText("*"),
                      child: Text("*"),
                    ),
                    ElevatedButton(
                      onPressed: () => changeText("="),
                      child: Text("="),
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
