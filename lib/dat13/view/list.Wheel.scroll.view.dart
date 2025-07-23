import 'package:flutter/material.dart';

//휠 형태의 리스트를 만들 때 사용
//해당 리스트를 이용하게 되면 바퀴를 굴리는 듯한 효과

class ListWheelScrollViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(' ListWheelScrollView연습')),
      body: ListWheelScrollView(
        itemExtent: 50,
        onSelectedItemChanged: (value) {
          //value 는 현재 아이템의 순서(인덱스)를 반환하고 있다

          print('Value: $value');
        },
        // magnification = 가운데 선택할 수 있는 우ㅣ젯의 확대
        //1-0 아 보통
        // magnification 사용 useMagnifier
        magnification: 2.0,
        useMagnifier: true,
        children: [
          Text('List 1'),
          Text('List 2'),
          Text('List 3'),
          Text('List 4'),
          Text('List 5'),
          Text('List 6'),
          Text('List 7'),
          Text('List 8'),
          Text('List 9'),
        ],
      ),
    );
  }
}
