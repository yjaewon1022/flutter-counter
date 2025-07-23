import 'package:flutter/material.dart';

// 격자 형태로 위젯을 배치할 때 사용합니다.
class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView 연습")),
      body: GridView.count(
        // crossAxisCount = 한 격자 줄에 몇 개를 표기할 것인가?
        crossAxisCount: 2,
        children: [
          Container(
            child: Center(child: Text("1")),
            color: Colors.red,
          ),
          Container(
            child: Center(child: Text("2")),
            color: Colors.blue,
          ),
          Container(
            child: Center(child: Text("3")),
            color: Colors.green,
          ),
          Container(
            child: Center(child: Text("4")),
            color: Colors.yellow,
          ),
          Container(child: Center(child: Text("5"))),
          Container(
            child: Center(child: Text("6")),
            color: Colors.green,
          ),
          Container(
            child: Center(child: Text("7")),
            color: Colors.lime,
          ),
          Container(
            child: Center(child: Text("8")),
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
