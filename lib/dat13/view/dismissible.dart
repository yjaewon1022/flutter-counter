import 'package:counter/day9/gugudan.dart';
import 'package:flutter/material.dart';

//Dismissible = 아이템을 왼쪽, 오른쪽으로
class DismissiblePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(' Dismissible연습')),
      body: ListView(
        children: [
          Dismissible(
            key: Key('item'),
            // confirmDismiss: (direction) {
            //   return showAlertDialog(
            //     context:context,
            //   Builder(context){
            //     return AlertDialog(
            //       title: const Text('진짜로 삭제하시겠습니까?'),
            //       content:  Text('item1을 삭제합니다.'),
            //       actions: <wdiget>[
            //         ElevatedButton(onPressed: (){
            //           return Navigator.of(context).pop(true);},

            //         child: const Text('삭제'),),
            //       ],
            //     ),
            //   },
            //   );
            // },
            child: ListTile(
              title: Text('Swipe me'),
              tileColor: Colors.lightBlue,
            ),
            onDismissed: (direction) {
              print('Deleted');
            },
          ),
          Dismissible(
            key: Key('item2'),
            child: ListTile(
              title: Text('Swipe me'),
              tileColor: Colors.lightGreen,
            ),
            onDismissed: (direction) {
              print('Deleted');
            },
          ),
          Dismissible(
            key: Key('item3'),
            child: ListTile(title: Text('Swipe me'), tileColor: Colors.orange),
            onDismissed: (direction) {
              print('Deleted');
            },
          ),
        ],
      ),
    );
  }
}
