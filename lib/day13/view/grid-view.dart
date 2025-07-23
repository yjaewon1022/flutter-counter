import 'package:flutter/material.dart';

// 격자 형태로 위젯을 배치할 때 사용합니다.
class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridVies 연습")),
      body: GridView.count(
        // crossAxisCount = 한 격자 줄에 몇 개를 표기할 것인가?
        crossAxisCount: 2,
        children: [
          Container(
            child: Center(child: Text("1")),
            color: Colors.green,
          ),
          Container(
            child: Center(child: Text("2")),
            color: Colors.red,
          ),
          Container(
            child: Center(child: Text("3")),
            color: Colors.blue,
          ),
          Container(
            child: Center(child: Text("4")),
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
