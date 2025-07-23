// 탭바뷰

import 'package:flutter/material.dart';

class TabBarViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //DefaultTabController (length: 탭갯수, child: 화면출력내용)으로
    // 리턴값을 줘야 함
    return DefaultTabController(
      //  initialIndex : 처음에 들어갔을때 표시될 탭 (인덱스로 표기됨 0부터)
      initialIndex: 2,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("싱글차일드스크롤뷰 연습"),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.login)),
              Tab(icon: Icon(Icons.window)),
              Tab(icon: Icon(Icons.food_bank)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("a")),
            Center(child: Text("a")),
            Center(child: Text("a")),
          ],
        ),
      ),
    );
  }
}
