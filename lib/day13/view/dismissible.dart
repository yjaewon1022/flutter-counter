import 'package:flutter/material.dart';

// Dismissible = 아이템을 왼쪽 또는 오른쪽으로 Swipe 해서 아이템을 제거할 수 있음
class DismissiblePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dismissible 연습")),
      body: ListView(
        children: [
          Dismissible(
            key: Key('item1'),
            // confirmDismiss: (direction) {
            //   return showDialog(
            //     context: context,
            //     builder: (context) {
            //       return AlertDialog(
            //         title: const Text('진짜로 삭제하시겠습니까?'),
            //         content: Text('item 1 을 삭제합니다.'),
            //         actions: <Widget>[
            //           ElevatedButton(
            //             onPressed: () {
            //               return Navigator.of(context).pop(false);
            //             },
            //             child: const Text('취소'),
            //           ),
            //           ElevatedButton(
            //             onPressed: () {
            //               return Navigator.of(context).pop(true);
            //             },
            //             child: const Text('삭제'),
            //           ),
            //         ],
            //       );
            //     },
            //   );
            // },
            child: ListTile(
              title: Text('Swipe me'),
              tileColor: Colors.lightGreen,
            ),
            onDismissed: (direction) {
              // direction 에 따라서 왼쪽 또는 오른쪽으로 Swipe 를 할 때
              // 각각 다른 기능을 추가할 수 있습니다.
              // 왼쪽에서 오른쪽으로 swipe = DismissDirection.startToEnd
              // 왼쪽에서 오른쪽으로 swipe = DismissDirection.endToStart
              print(direction);
            },
          ),
          Dismissible(
            key: Key('item2'),
            child: ListTile(
              title: Text('Swipe me'),
              tileColor: Colors.lightBlue,
            ),
            onDismissed: (direction) {
              print('Deleted');
            },
          ),
          Dismissible(
            key: Key('item3'),
            child: ListTile(title: Text('Swipe me'), tileColor: Colors.red),
            onDismissed: (direction) {
              print('Deleted');
            },
          ),
        ],
      ),
    );
  }
}
