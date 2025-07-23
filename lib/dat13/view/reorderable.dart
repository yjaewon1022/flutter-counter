import 'package:flutter/material.dart';

//휠 형태의 리스트를 만들 때 사용
//해당 리스트를 이용하게 되면 바퀴를 굴리는 듯한 효과

class ReorderableListViewPage extends StatefulWidget {
  @override
  State<ReorderableListViewPage> createState() {
    return ReorderableListViewState();
  }
}

class ReorderableListViewState extends State<ReorderableListViewPage> {
  final List<Widget> _items = [
    ListTile(key: Key('List1'), title: Text('List1')),
    ListTile(key: Key('List2'), title: Text('List2')),
    ListTile(key: Key('List3'), title: Text('List3')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ReOrderableListView 연습')),
      body: ReorderableListView(
        //onReorder = 리스트를 드래그 & 드롭 했을 때 재정렬을 할 수 있게 하는 함수
        //내부 내용을 작성하면 실제로 해당 코드가 동작해 리스트가 재정렬됨
        //oldIndex = 내가 선택한(드랍한) 아이템의 현재 리스트의 인덱스
        //newIndex = 내가 놓은(드랍한) 아이템의 현재 리스트의 인덱스
        onReorder: ((oldIndex, newIndex) {
          print("oldIndex: $oldIndex"); // 0
          print("newIndex: $newIndex"); // 3

          // [0, 1, 2]; 이 리스트에서 0 을 옮긴거를 인지를 하지 못하고 추가했다 라고 인지를 함
          // [1, 2, 0] 이렇게 옮겨지는게 아니라 [0, 1, 2, 0] 이런식으로 컴퓨터가 인지를 함
          // 그래서 처음 newIndex 를 print 했을 땐 1을 더한 값이 저장이 된다.

          setState(() {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }

            print("oldIndex: $oldIndex"); // 0
            print("newIndex: $newIndex"); // 2

            final item = _items.removeAt(oldIndex);
            _items.insert(newIndex, item);
          });
        }),
        children: _items,
      ),
    );
  }
}
