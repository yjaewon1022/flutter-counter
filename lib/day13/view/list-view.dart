import 'package:flutter/material.dart';

// ListView 를 사용하는 경우 = 목록을 표기할 때 주로 사용하는 클래스(컴포넌트)
// 목록 = 버스 시간표 라던지 아니면 배민에서 상점들 쭉 볼때 나오는 목록들
// 내부에 있는 children 들의 내용이 구조가 다 같아야 함.
class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("리스트뷰 연습")),
      body: ListView(
        children: [
          ListTile(title: Text('Item 1'), tileColor: Colors.blue),
          ListTile(title: Text('Item 2'), tileColor: Colors.red),
          ListTile(title: Text('Item 3'), tileColor: Colors.green),
          ListTile(title: Text('Item 1'), tileColor: Colors.blue),
          ListTile(title: Text('Item 2'), tileColor: Colors.red),
          ListTile(title: Text('Item 3'), tileColor: Colors.green),
          ListTile(title: Text('Item 1'), tileColor: Colors.blue),
          ListTile(title: Text('Item 2'), tileColor: Colors.red),
          ListTile(title: Text('Item 3'), tileColor: Colors.green),
          ListTile(title: Text('Item 1'), tileColor: Colors.blue),
          ListTile(title: Text('Item 2'), tileColor: Colors.red),
          ListTile(title: Text('Item 3'), tileColor: Colors.green),
          ListTile(title: Text('Item 1'), tileColor: Colors.blue),
          ListTile(title: Text('Item 2'), tileColor: Colors.red),
          ListTile(title: Text('Item 3'), tileColor: Colors.green),
        ],
      ),
    );
  }
}
