import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gridview 연습')),
      body: GridView.count(
        //crossAxisCoun = 한 격자 줄에 몇 개를 표기할 것인가
        crossAxisCount: 2,
        children: [
          Center(child: Text("1")),
          Center(child: Text("2")),
          Center(child: Text("3")),
          Center(child: Text("4")),
        ],
      ),
    );
  }
}
