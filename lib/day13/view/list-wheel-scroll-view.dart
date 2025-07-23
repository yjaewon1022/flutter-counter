import 'package:flutter/material.dart';

// 휠 형태의 리스트를 만들 때 사용됨.
// 해당 리스트를 이용하게 되면 바퀴를 굴리는 듯한 효과의 리스트를 확인할 수 있음
class ListWheellScrollViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListWhellScrollView 연습")),
      body: ListWheelScrollView(
        itemExtent: 100,
        onSelectedItemChanged: (value) {
          // value 는 현재 아이템의 순서(인덱스) 를 반환하고 있구나!
          print("value: $value");
        },
        // magnification = 가운데 선택할 수 있는 위젯의 확대 배율
        // 1.0 이 보통 크기이며, 1.0 보다 작으면 축소, 1.0 보다 크면 확대
        // magnification 을 사용하기 위해서는 useMagnifier 를 true 로 설정해주어야 함.
        magnification: 1.5,
        useMagnifier: true,
        children: [
          Text("List 1"),
          Text("List 2"),
          Text("List 3"),
          Text("List 4"),
          Text("List 5"),
          Text("List 6"),
          Text("List 7"),
          Text("List 8"),
        ],
      ),
    );
  }
}
