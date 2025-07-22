import 'package:flutter/material.dart';

void main() {
  return runApp(ButtonInputTextFieldWidget());
}

class ButtonInputTextFieldWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ButtonInputTextFieldState();
}

class ButtonInputTextFieldState extends State<ButtonInputTextFieldWidget> {
  var controller = TextEditingController();
  // 첫 번째 수
  var num1 = "";

  // 두 번째 수
  var num2 = "";

  void changeText(String value) {
    setState(() {
      // controller.text = 우리가 버튼을 통해서 입력한 모든 문자열이 들어가는 변수
      // value = 사용자가 맨 마지막에 버튼으로 누른 값이 들어가는 변수

      // 1. 사용자가 입력한 값이 하나라도 존재하고, 마지막으로 누른 버튼이 "" 값이냐?
      if (controller.text.isNotEmpty && value == "") {
        // 만약 지울 값이 있고(입력한 값이 하나라도 존재하고), 지우기 버튼을 눌렀으면
        // 마지막 문자를 제거해라.
        controller.text = controller.text.substring(
          0,
          controller.text.length - 1,
        );
      } else {
        // 첫 번째 조건문
        // if-else 문으로 다음의 조건을 확인
        // + 인가? 아니면 - 인가? 아니면 * 인가? 아니면 / 인가? 아니면 = 인가?
        if (value == "+") {
          if (controller.text.isNotEmpty && value == "+") {
            controller.text = controller.text.substring(
              0,
              controller.text.length - 1,
            );
          }
          // 현재 controller.text 에는 예를들어 1234+ 라는 값이 들어갔다 라는 의미이다.
          // 현재 controller.text 에 있는 값에서 맨 마지막에 있는 + 라는 값을 제외한
          // 나머지 숫자를 num1 에 저장해라.
          // 마지막에 있는 +를 제거하는 방법 = 윗부분 마지막 문자 제거하는 부분 참고
        } else if (value == "-") {
          //
        } else if (value == "=") {
          // = 이 들어가는 경우는 두 번째 숫자도 입력된 경우
          // 기존에 있던 연산자와 = 사이의 숫자를 잘라내서 num2 에 저장해라.
        }
        // 만약 연산자가 들어갔다 -> + - * / 가 들어갔다 라는 뜻이니,
        // 기존까지 입력했던 모든 문자열의 값을 num1 에 담아라.
        // 라는 내용이 들어가야합니다.

        // 사용자가 지우기버튼이 아니라 다른 버튼을 눌렀으니 해당 값을 controller.text에 추가해라.
        controller.text += value;
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
