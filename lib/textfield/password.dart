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

  // 비밀번호 노출 여부를 정하는 변수
  late bool _cannotSeePassword = true;

  //
  void changePasswordVisibility() {
    // bool값을 반대로 바꿔줘
    _cannotSeePassword = !_cannotSeePassword;
    print(_cannotSeePassword);
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
              //obscureText 입력값 보안해줌 : ****
              obscureText: _cannotSeePassword,
              decoration: InputDecoration(
                labelText: "비밀번호",
                suffixIcon: IconButton(
                  onPressed: () {
                    // 누르면 bool값 반대로 바꿔줘
                    changePasswordVisibility();
                  },
                  icon: Icon(Icons.visibility),
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
