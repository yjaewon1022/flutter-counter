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

  var num1 = "";
  var num2 = "";
  late var = result;
  operator

Switch(Operator){
  case "+";
  result = double.parse(num1) + double.parse(num2);
  break;
  case "-";
  result = double.parse(num1) - double.parse(num2);
  break;
  

}

  void changeText(String value) {
    setState(() {
      if (controller.text.isNotEmpty && value == "") {
        // controller.text 에서 마지막에 있는 문자를 지우는 부분
        controller.text = controller.text.substring(
          0,
          controller.text.length - 1,
        );
      } else {
        // controller.text = 현재 입력창에 들어가있는 모든 숫자와 문자를 포함한 변수 ex) 1234+
        // value = 사용자가 마지막으로 누른 버튼의 값 예) +
        // 1. 숫자를 버튼을 통해서 입력하고 그 뒤에 연산자가 입력이 되었는지 확인
        if (value == "+") {
          // + 를 제외한 나머지 숫자(마지막에 입력된 숫자를 제외한 나머지 값)를 num1 변수에 담아라.
        } else if (value == "-") {
          num1 = controller.text = controller.text.substring(
          0,
          controller.text.length - 1,
        );
        } else if (value == "*") {
          num1 = controller.text = controller.text.substring(
          0,
          controller.text.length - 1,
        );
        } else if (value == "/") {
         num1 = controller.text = controller.text.substring(
          0,
          controller.text.length - 1,
        );
        } else if (value == "=") {
          num1 =controller.text = controller.text.substring(
          0,
          controller.text.length - 1,
        );
          // 123+111=
          // + 와 = 사이에 있는 나머지 숫자를 num2에 담아라.
           var list = {};
          list = controller.text.split(operator);
        
        }

        // 만약 연산자가 입력이 됐으면 지금까지 입력되어있던 내용(controller.text) 의 값을 num1 에 담아라.

        // 만약 연산자가 아니라 숫자가 입력이 됐으면 밑의 코드를 실행해라.
        
         
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
                      onPressed: () => changeText("+"),
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
