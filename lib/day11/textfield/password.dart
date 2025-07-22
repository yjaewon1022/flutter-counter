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
  //비밀번호 가시성 여부를 뜻하는 변수는 _cannotSeePassword 선언
  //처음에는 사용자가 비밀번호를 볼 수 없어야 하니 true값을 준다

  late bool _cannotSeePassword = true;

  void changePasswordVisibility() {
    //_cannotSeePassword라는 변수에 기존에 있던 _cannotSeePassword 변구의 값을
    //반전시켜 넣겠다
    //!= -> 비교연산자
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
              //이 값을 변경하면 사용자가 비밀번호를 볼 수 있다
              obscureText: _cannotSeePassword,
              decoration: InputDecoration(
                labelText: '비밀번호',
                border: OutlineInputBorder(),
                //suffixIcon -> 입력창 우측에 표기된 아이콘
                suffixIcon: IconButton(
                  onPressed: () {
                    Icon(Icons.visibility);
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
