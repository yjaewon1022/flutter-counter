import 'package:flutter/material.dart';

class ReorderableListViewPage extends StatefulWidget {
  @override
  State<ReorderableListViewPage> createState() {
    return ReorderableListViewState();
  }
}

class ReorderableListViewState extends State<ReorderableListViewPage> {
  final List<Widget> _items = <Widget>[
    ListTile(key: Key("List 1"), title: Text("List 1")),
    ListTile(key: Key("List 2"), title: Text("List 2")),
    ListTile(key: Key("List 3"), title: Text("List 3")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ReorderableListView 연습")),
      body: ReorderableListView(
        // onReorder = 리스트를 드래그 & 드롭 했을 때 재정렬을 할 수 있게 도와주는 함수
        // 내부 내용을 작성하면 실제로 해당 코드가 동작해 리스트가 재정렬됨.
        // oldIndex = 내가 선택한(드래그한) 아이템의 기존 리스트의 인덱스
        // newIndex = 내가 놓은(드랍한) 아이템의 현재 리스트의 인덱스
        onReorder: (oldIndex, newIndex) {
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
