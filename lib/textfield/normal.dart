import 'package:flutter/material.dart';

void main() {
  return runApp(NormalTextFieldWidget());
}

// StatelessWidget and StatefullWidget
// 앱에서 실시간으로 사용자가 입력한 값을 가져와서 화면에 띄워줘야 하기 때문에
// StatefulWidget을 사용
class NormalTextFieldWidget extends StatefulWidget {
  @override
  State<NormalTextFieldWidget> createState() => NormalTextFieldState();
}

class NormalTextFieldState extends State<NormalTextFieldWidget> {
  // 사용자가 나중에 입력한 값을 저장하는 인스턴스 변수
  late String _text = '';

  // state 의 값을 변경해주는 기능을 구현하면
  // 사용자가 입력창에 입력한 값을 실제로 화면에 띄워볼수도 있겠구나!
  // state 의 값을 변경해주는 기능을 변경하는 함수가 무엇?
  // seState((){});
  void changeText(String value) {
    setState(() {
      //_text 인스턴스 변수 안에 값을 넣어야겠다.
      _text = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    //Scaffold= 기본적으로 앱에서 보여질 디자인 하면 틀
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                label: Text("이름을 입력하세요"),
                border: UnderlineInputBorder(),
              ),
              //onchanged 기능을 이용하면 사용자가 입력창의 내용을 바꿀 때 마다
              //안에 있는 함수가 실행이 되는구나.
              onChanged: (value) {
                changeText(value);
              },
            ),
            Text(_text),
          ],
        ),
      ),
    );
  }
}
