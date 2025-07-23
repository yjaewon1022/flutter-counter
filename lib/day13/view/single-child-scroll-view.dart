import 'package:flutter/material.dart';

// 한 개의 자식을 스크롤 할 수 있게 만들 때 사용합니다.
// SingleChildScrollView = 앱 화면을 만들어서 여러 위젯을 넣고, 해당 화면을 스크롤 하게 할 때
// 주로 사용합니다.
// 화면에 서로 다른 위젯들이 많이 있을 때 이들을 스크롤 할 수 있게 만들어주는 기능
class SingleChildScrollViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SingleChildScrollView 연습")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Line 1"),
            Text("Line 2"),
            Text("Line 3"),
            Text("Line 4"),
            Text("Line 5"),
            Text("Line 6"),
            Text("Line 7"),
            Text("Line 1"),
            Text("Line 2"),
            Text("Line 3"),
            Text("Line 4"),
            Text("Line 5"),
            Text("Line 6"),
            Text("Line 7"),
          ],
        ),
      ),
    );
  }
}
