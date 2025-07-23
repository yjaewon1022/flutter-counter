//그리드뷰

import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("그리드뷰 연습")),
      body: GridView.count(
        // crossAxisCount :한격자줄에 표시할 갯수
        crossAxisCount: 2,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text("1"),
            color: Colors.amber,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text("2"),
            color: Colors.amber,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text("3"),
            color: Colors.amber,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text("4"),
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
