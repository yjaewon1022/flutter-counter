import 'package:counter/day13/navigation/second.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(FirstPage());
}

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() {
    return FirstPageState();
  }
}

class FirstPageState extends State<FirstPage> {
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
            child: Text("두 번째 페이지로 가기"),
          ),
        ],
      ),
    );
  }
}
