import 'package:flutter/material.dart';

void main() {
  return runApp(ProfileTextFieldWidget());
}

class ProfileTextFieldWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ProfileTextFieldState();
}

class ProfileTextFieldState extends State<ProfileTextFieldWidget> {
  late String _text = "";
  late String _text2 = "";

  void changeText(String value) {
    setState(() {
      _text = value;
    });
  }

  void changeText2(String value) {
    setState(() {
      _text2 = value;
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
              maxLength: 5,
              decoration: InputDecoration(
                labelText: '이름을 입력하세요.',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                changeText(value);
              },
            ),
            TextField(
              maxLength: 20,
              decoration: InputDecoration(
                labelText: '직업을 입력하세요.',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                changeText2(value);
              },
            ),
            TextField(
              maxLength: 40,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'e-mail.을 입력하세요.',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                changeText(value);
              },
            ),
            TextField(
              maxLength: 500,
              maxLines: 7,
              decoration: InputDecoration(
                labelText: '자기소개서',
                border: OutlineInputBorder(),
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
