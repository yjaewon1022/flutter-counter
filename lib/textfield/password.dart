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
  // 비밀번호 가시성 여부를 뜻하는 변수
  late bool _canotSeePassword = true;

  // 비밀번호를 보거나 못보게 하는 함수를 만들자!
  void changePasswordVisibility() {
    // != 는 변수의 값을 반전시켜서 변수의 값을 넣는다.
    _canotSeePassword = !_canotSeePassword;
    print(_canotSeePassword);
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
              obscureText: true,
              decoration: InputDecoration(
                labelText: "비밀번호",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: () {
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
