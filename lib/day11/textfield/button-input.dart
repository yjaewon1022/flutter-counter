// button-input.dart 파일을 참고하여,
// 0 ~ 9 까지의 숫자가 입력 가능하고,
// + - * / 버튼도 추가하여 버튼을 이용한 계산기 프로그램 만들기를 진행해봅시다!
// 숫자를 입력하고 난 뒤에 changeText 에서 받아온 값이 + - * / 중 하나라면
// 지금까지 입력받았던 숫자를 num1 이라는 변수에 담고,
// 이후에 숫자를 계속해서 입력받다가, 마지막으로 = 을 입력 받게 될 경우
// 기존에 입력했었던 + - * / 연산자 중 선택된 연산자를 통한 계산을 실행하면 됩니다.
// = 을 입력하면 기존에 있던 텍스트들은 사라지고, 결과가 입력창에 나와야 합니다.
import 'package:flutter/material.dart';

void main() {
  return runApp(CalculatorWidget());
}

class CalculatorWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CalculatorState();
}

class CalculatorState extends State<CalculatorWidget> {
  var controller = TextEditingController();
  // 계산기 기능을 만들 때 필요한 변수 선언
  // 1. 첫 번째 숫자
  late var num1;
  // 2. 두 번째 숫자
  late var num2;
  // 3. 결과값
  late var result;
  // 4. 어떤 연산자를 입력했는지 저장하는 변수
  late var operator;

  void changeText(String value) {
    setState(() {
      // 숫자 지우기
      // 만약 현재 입력창이 비어있지 않으면서, 입력값이 "" 이면
      if (controller.text.isNotEmpty && value == "") {
        // 입력창의 내용에서 마지막 한 글자를 제거해라.
        controller.text = controller.text.substring(
          0,
          controller.text.length - 1,
        );
      } else {
        // 입력창에 사용자가 입력한 입력값을 추가해라.
        controller.text += value; // 1 + 2 =

        // 사용자가 연산 기호를 입력했을 때에 대한 조건을 처리하면
        // 실제로 첫 번째 숫자와 두 번째 숫자를 변수에 담고, 계산을 할 수 있겠다!
        // controller.text = 입력창에 입력이 되어있는 문자열
        // value = 사용자가 마지막으로 누른 버튼의 값
        // 1. 첫 번째 연산자를 입력한 경우
        if (value == "+") {
          // num1 에 우리가 가지고 있는 전체 문자열에서 마지막 부분을 제외한
          // 나머지 문자열을 num1 에 넣으면 되겠다!
          num1 = controller.text.substring(0, controller.text.length - 1);
          operator = "+";
        } else if (value == "-") {
          num1 = controller.text.substring(0, controller.text.length - 1);
          operator = "-";
        } else if (value == "*") {
          num1 = controller.text.substring(0, controller.text.length - 1);
          operator = "*";
        } else if (value == "/") {
          num1 = controller.text.substring(0, controller.text.length - 1);
          operator = "/";
        } else if (value == "=") {
          // = 이 입력되는 경우 -> 첫번째 수, 연산자, 두번째 수 까지 다 입력된 후
          // list 라는 변수를 선언해서, 모든 문자열과 연산기호들을 분리해보자
          var list = [];
          // 전체 문자열에서 필요한 부분끼리 분리를 해볼 예정
          list = controller.text.split(operator);

          // list 에서 분리한 마지막 값이 사용자가 입력한 두 번째 수가 되는구나!
          num1 = list.first;
          num2 = list.last.substring(0, list.last.length - 1);

          print("num1의 타입: ${num1.runtimeType}, num1 값: $num1");
          print("num2의 타입: ${num2.runtimeType}, num2 값: $num2");

          // 첫 번째 수와, 두 번째 수를 다 가지고 있고, 연산자도 가지고 있으니
          // 실제로 계산해서 계산 결과를 보여주면 되겠구나!
          // 사용자가 입력한 연산자에 따라서 + - * / 를 할 수 있도록
          // switch-case 문을 이용하면 되겠다!
          switch (operator) {
            case "+":
              // 결과값에 실제 결과를 담아주면 되겠다.
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
            default:
              break;
          }

          controller.text = result.toString();
        }
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
