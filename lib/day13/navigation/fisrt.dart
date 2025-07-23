import 'package:counter/day13/navigation/second.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        ],
      ),
    );
  }
}
