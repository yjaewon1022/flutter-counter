import 'package:counter/day13/navigation/second.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  var givenData;

  FirstPage({required var data}) {
    // data = 12431243
    givenData = data;
  }

  @override
  State<FirstPage> createState() {
    return FirstPageState(givenData: givenData);
  }
}

class FirstPageState extends State<FirstPage> {
  // 이전 화면에서 데이터를 받을게 있다면 해당 내용을 담알 수 있는 변수를 먼저 선언!
  var data;

  // 외부에서 가져온 값을 우리의 인스턴스 변수에 담기 위해서 생성자를 작성해준다.
  FirstPageState({required var givenData}) {
    data = givenData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter 예제')),
      body: Column(
        children: [
          Text("첫 번째 페이지입니다."),
          ElevatedButton(
            onPressed: () {
              // pop = 한 단계 뒤로가기
              // 현재 사용자가 이동했던 페이지들을 가져오게 됨 -> [FirstPage()]
              // 이후 맨 마지막에 이동했었던 페이지 기록을 pop 뽑아내서 -> []
              // 이전에 있었던 페이지로 사용자를 이동시킨다.
              Navigator.pop(context);
            },
            child: Text("메인 페이지로 돌아가기"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );
            },
            child: Text("두 번째 페이지로 돌아가기"),
          ),
          Text("$data"),
        ],
      ),
    );
  }
}
