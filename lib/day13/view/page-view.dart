//페이지뷰
// 페이지를 좌우로 넘겨야할때 사용됨
// 주의점 : dispose라는 함수를 override해서 각각 컨트롤러로 관리해야 함

import 'package:flutter/material.dart';

class PageViewPage extends StatelessWidget {
  //
  var pageController = PageController();

  //dispose : 현재할당된 메모리해제
  //현재 클래스ㅏ state<>로 선언되있을때 사용할 수 있음 (statefulWidget일때만 선언 가능.) 실시간으로 값을 받기 때문에.
  @override
  void dispose() {
    pageController.dispose();
    //super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("싱글차일드스크롤뷰 연습")),
      body: PageView(
        children: [
          Container(color: Colors.red),
          Container(color: Colors.orange),
          Container(color: Colors.amber),
          Container(color: Colors.green),
          Container(color: Colors.blue),
          Container(color: Colors.black),
        ],
      ),
    );
  }
}
