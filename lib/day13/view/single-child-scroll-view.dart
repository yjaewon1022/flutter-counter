import 'package:flutter/material.dart';

// 한 개의 자식을 스크롤할 수 있게 만들 때 사용합니다.
// SingleChildScrollView = 앱화면을 만들어서 여러 위젯을 넣고, 해당 화면을 스크롤 하게 할 때
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
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 143214321S"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 1"),
            Text("Line 412222411"),
            Text("Line 1"),
            Text("Line 4142141"),
            Text("Line 1143432"),
            Text("Line 42134231"),
            Text("Line 1214123"),
          ],
        ),
      ),
    );
  }
}
