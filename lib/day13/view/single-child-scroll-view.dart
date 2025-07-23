//싱글차일드 스크롤 뷰
// 한개의 자식을 스크롤할때 사용
// 한화면안에 여러 위젯을 넣고 스크롤할때 쓴다
// 차이점 (리스트뷰는 내부에 같은 위젯이어야 가능함)

import 'package:flutter/material.dart';

class SingleChildScrollViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("싱글차일드스크롤뷰 연습")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("123456789"),
            Text("123456789"),
            Text("123456789"),
            Text("123456789"),
            Text("123456789"),
            Text("123456789"),
            Text("123456789"),
          ],
        ),
      ),
    );
  }
}
