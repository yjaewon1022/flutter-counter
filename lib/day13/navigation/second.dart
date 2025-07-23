import 'package:flutter/material.dart';

void main() {
  return runApp(SecondPage());
}

class SecondPage extends StatefulWidget {
  @override
  State<SecondPage> createState() {
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
          Text("두 번째 페이지입니다."),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("이전 페이지로 돌아가기"),
          ),
        ],
      ),
    );
  }
}
