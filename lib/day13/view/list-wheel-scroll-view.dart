// 리스트휠스크롤 뷰
// 리스트를 휠처럼 둥글게 스크롤 할 수 있다.

import 'package:flutter/material.dart';

class ListWheelScrollViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //DefaultTabController (length: 탭갯수, child: 화면출력내용)으로
    // 리턴값을 줘야 함
    return Scaffold(
      appBar: AppBar(title: Text("싱글차일드스크롤뷰 연습")),
      body: ListWheelScrollView(
        // itemExtent : 아이템 거리? 같은거
        itemExtent: 50,
        // list의 어디를 선택했는지 보여줌 (인덱스라서 0부터 계산)
        onSelectedItemChanged: (value) {
          print(value);
        },
        // 선택한 값을 크게 보여줌 magnification (확대라는 뜻)
        magnification: 4.0,
        useMagnifier: true, //돋보기쓰기를 true로 해줘야함
        children: [
          Text("aaaa"),
          Text("bbbb"),
          Text("cccc"),
          Text("dddd"),
          Text("aaaa"),
          Text("bbbb"),
          Text("cccc"),
          Text("dddd"),
          Text("aaaa"),
          Text("bbbb"),
          Text("cccc"),
          Text("dddd"),
          Text("aaaa"),
          Text("bbbb"),
          Text("cccc"),
          Text("dddd"),
          Text("aaaa"),
          Text("bbbb"),
          Text("cccc"),
          Text("dddd"),
          Text("aaaa"),
          Text("bbbb"),
          Text("cccc"),
          Text("dddd"),
        ],
      ),
    );
  }
}
