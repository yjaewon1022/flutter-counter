import 'package:counter/day13/navigation/second.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FirstPage extends StatefulWidget {
  var givenData;

  FirstPage({required var data}) {
    givenData = data;
  }

  @override
  State<FirstPage> createState() {
    return FirstPageState(givenData: givenData);
  }
}

class FirstPageState extends State<FirstPage> {
  //이번 화면에서 데이터를 받을수 있게 된다면 해당 내용을 담을 수 있는 변수를 선언
  var data;
  //외부에서 가져온 값을 우리의 인스턴스 변수에 담기 위해서 생성자를 작성해준다.
  FirstPageState({required var givenData}) {
    data = givenData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter 예제')),
      body: Column(
        children: [
          Text("첫번째 페이지 입니다."),
          ElevatedButton(
            onPressed: () {
              // pop= 한단계 뒤로가기.
              Navigator.pop(context);
            },
            child: Text("메인페이지로 돌아가기"),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );
            },
            child: Text("두번째 페이지로 가기"),
          ),
          Text("$data"),
        ],
      ),
    );
  }
}
