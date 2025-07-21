import 'package:flutter/material.dart';

void main() {
  return runApp(NormalTextfieldWidget());
}

//StatefulWidget
//앱에서 실시간으로 사용자가 입력한
class NormalTextfieldWidget extends StatefulWidget {
  //State 의 값을 변경해주는 기능을 구현하면
  //시용자가 입력창에 입력한 값을 실제로 화면에 띄워볼 수도 있다
  //State 의 값을 변경해주는 기능을 변겨하는 함수=> setState{(){}};

  @override
  State<NormalTextfieldWidget> createState() => NormalTextfieldState();
}

class NormalTextfieldState extends State<NormalTextfieldWidget> {
  //State 의 값을 변경해주는 기능을 구현하면
  //시용자가 입력창에 입력한 값을 실제로 화면에 띄워볼 수도 있다
  //State 의 값을 변경해주는 기능을 변겨하는 함수=> setState((){});

  late String _text = '';

  void changeText(String value) {
    setState(() {
      //_text 인스턴스변수 안에 값을 넣어야함
      _text = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    //Scaffold란 무엇인가
    //기본적으로 앱에 보여야 할 디자인 화면 툴
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                label: Text('이름을 입력하세요'),
                border: UnderlineInputBorder(),
              ),
              //onChanged 기능을 이용하면 사용자가 입력창의 내용을 바꿀 때 마다
              //안에 있는 함수가 생성!
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
