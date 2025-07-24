import 'package:flutter/material.dart';

class NamePage extends StatefulWidget {
  late Map givenData;

  NamePage({required Map data}) {
    givenData = data;
  }

  @override
  State<StatefulWidget> createState() {
    return NamePageState(data: givenData);
  }
}

class NamePageState extends State<NamePage> {
  //이전 화면에서 데이터를 받을게 있다면 해당 내용을 담을 수 있는 변수를 먼저 선정
  var givenData;

  //외부에서 가져온 값을 우리의 인스턴스 변수에 담기 위해서 생성자를 작성해준다.
  NamePageState({required Map data}) {
    late Map givendata;

    NamePageState({required Map data}) {
      givenData = data;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('이름 작성하기')),
      body: TextField(
        decoration: InputDecoration(
          labelText: '이름을 입력하세요',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
