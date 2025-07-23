// reorderable-list-view
// 재정렬이 가능한 리스트뷰

import 'package:counter/day9/note.dart';
import 'package:flutter/material.dart';

class ReorderableListViewPage extends StatefulWidget {
  @override
  State<ReorderableListViewPage> createState() {
    return ReorderableListViewPageState();
  }
}

class ReorderableListViewPageState extends State<ReorderableListViewPage> {
  // 아이템 변수 선언
  final List<Widget> _items = <Widget>[
    ListTile(key: Key("List 1"), title: Text("list 1")),
    ListTile(key: Key("List 2"), title: Text("list 2")),
    ListTile(key: Key("List 3"), title: Text("list 3")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ReorderableList 연습")),
      body:
          //ReorderableListView 사용
          ReorderableListView(
            // onReorder : 리스트 재정렬을 도와주는 함수
            // 드래그&드롭시 내부함수 작동함
            // oldIntex : 드래그한 요소의 인덱스번호
            // newIndex : 드롭한 곳의 인덱스번호
            onReorder: (oldIndex, newIndex) {
              //실행할 함수
              setState(() {
                if (oldIndex < newIndex) {
                  newIndex -= 1;
                }
                final item = _items.removeAt(oldIndex);
                _items.insert(newIndex, item);
              });
            },
            children: _items,
          ),
    );
  }
}
