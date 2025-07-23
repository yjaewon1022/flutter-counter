//dismissible

import 'package:counter/day9/note.dart';
import 'package:flutter/material.dart';

class DismissibleViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("리스트뷰 연습")),
      body: ListView(
        children: [
          Dismissible(
            key: Key('item1'),
            // confirmDismiss: (direction) {return showDialog(context: context, builder: builder)},
            child: ListTile(
              title: Text("swipe me"),
              tileColor: Colors.pink[100],
            ),
            onDismissed: (direction) {
              print('Deleted');
              print(direction);
              // 스와이프 방향에따라 다른 동작을 줄 수 있다.
              // 왼쪽에서 오른쪽으로 swipe = DismissDirection.startToEnd
              // 왼쪽에서 오른쪽으로 swipe = DismissDirection.endToStart

              if (direction == DismissDirection.startToEnd) {
                print("오른쪽으로 스와이프");
              }
              ;
            },
          ),
          Dismissible(
            key: Key('item2'),
            child: ListTile(
              title: Text("swipe me"),
              tileColor: Colors.pink[200],
            ),
            onDismissed: (direction) {
              print('Deleted');
            },
          ),
        ],
      ),
    );
  }
}
