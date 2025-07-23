import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  var givenData;

  FirstPage({required var data}) {
    givenData = data;
  }

  @override
  State<StatefulWidget> createState() {
    return FirstPageState(data: givenData);
  }
}

class FirstPageState extends State<FirstPage> {
  //이전 화면에서 데이터를 받을게 있다면 해당 내용을 담을 수 있는 변수를 먼저 선정
  var givenData;

  //외부에서 가져온 값을 우리의 인스턴스 변수에 담기 위해서 생성자를 작성해준다.
  FirstPageState({required var data}) {
    givenData = data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter 예제')),
      body: Column(
        children: [
          Text('첫 번째 페이지입니다.'),
          ElevatedButton(
            onPressed: () {
              //pop - 한 단계 뒤로 가기
              //현재 사용자가 이동했던 페이지를 가져오게 됨 ->[First Page()]
              //이후 맨 마지막에 이동했었던 페이지 기록을 pop 뽑아내서 => []
              //이전에 있었던 페이지로 사용자를 이동시킨다
              Navigator.pop(context);
            },

            child: Text('메인 페이지로 돌아가기'),
          ),
          Text("$givenData"),
        ],
      ),
    );
  }
}
