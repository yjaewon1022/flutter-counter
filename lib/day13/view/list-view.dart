//list view
// 내부의 위젯들이 같은 구조여야 한다.

import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("리스트뷰 연습")),
      body: ListView(
        children: [
          ListTile(title: Text("1"), tileColor: Colors.red),
          ListTile(title: Text("2"), tileColor: Colors.orange),
          ListTile(title: Text("3"), tileColor: Colors.yellow),
        ],
      ),
    );
  }
}
