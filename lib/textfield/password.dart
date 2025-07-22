import 'package:flutter/material.dart';

void main() {
  return runApp(PasswordTextFieldWidget());
}

class PasswordTextFieldWidget extends StatefulWidget {
  @override
  State<PasswordTextFieldWidget> createState() => PasswordTextFieldState();
}

class PasswordTextFieldState extends State<PasswordTextFieldWidget> {
  late String _text = "0";
  // 비밀번호 가시성 여부를 뜻하는 변수인 _cannotSeePassword 를 선언
  // 처음에는 사용자가 비밀번호를 볼 수 없어야 하니, true로 값을 줘야겠다!
  late bool _cannotSeePassword = true;

  // 비밀번호를 보거나 못보게 하는 함수를 만들자!
  void changePasswordVisibility() {
    // _cannotSeePassword 라는 변수에 기존에 있던 _cannotSeePassword 변수의 값을
    // 반전시켜서 넣겠다.
    // ! -> 비교연산자로서, 값을 반대로 변경하는 방법. 교재 79p
    setState(() {
      _cannotSeePassword = !_cannotSeePassword;
    });
  }

  void changeText(String value) {
    setState(() {
      _text = value;
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
              // 이 값을 변경하면 사용자가 비밀번호를 볼 수 있겠구나!
              obscureText: _cannotSeePassword,
              decoration: InputDecoration(
                labelText: "비밀번호",
                border: OutlineInputBorder(),
                // suffixIcon -> 입력창 우측에 표기될 아이콘
                suffixIcon: IconButton(
                  onPressed: () {
                    changePasswordVisibility();
                  },
                  icon: _cannotSeePassword
                      ? Icon(Icons.visibility)
                      : Icon(Icons.visibility_off),
                ),
              ),
              onChanged: (value) {
                changeText(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
