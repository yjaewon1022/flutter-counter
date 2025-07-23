import 'package:flutter/material.dart';

void main() {
  return runApp(SecondPage());
}

class SecondPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SecondPageState();
  }
}

class SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter 예제')),
      body: Column(
        children: [
          Text('두 번째 페이지입니다.'),
          ElevatedButton(
            onPressed: () {
              //pop - 한 단계 뒤로 가기
              //현재 사용자가 이동했던 페이지를 가져오게 됨 ->[Second Page()]
              //이후 맨 마지막에 이동했었던 페이지 기록을 pop 뽑아내서 => []
              //이전에 있었던 페이지로 사용자를 이동시킨다
              Navigator.pop(context);
            },

            child: Text('이전 페이지로 돌아가기'),
          ),
        ],
      ),
    );
  }
}
