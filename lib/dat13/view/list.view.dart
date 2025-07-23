import 'package:flutter/material.dart';

//Listview를 이용하는 경우 = 목록을 표기할 때 주로 사용하는 클래스(컴포넌트)
//목록- 버스 시감표, 배달앱의 상점리스트
//내부에 있는 children들의 내용이 구조가 같아야 함

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('리스트뷰 연습')),
      body: ListView(
        children: [
          ListTile(title: Text('Item1'), tileColor: Colors.blue),
          ListTile(title: Text('Item1'), tileColor: Colors.red),
          ListTile(title: Text('Item1'), tileColor: Colors.yellow),
          ListTile(title: Text('Item1'), tileColor: Colors.pink),
        ],
      ),
    );
  }
}
