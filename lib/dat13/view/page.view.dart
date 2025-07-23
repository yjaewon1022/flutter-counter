import 'package:flutter/material.dart';

//Pageview =화면을 좌우로 넘겨야 할 때 사용
//pageview 를 한 번에 여러 개를 이용할 때 주의사항
//dispose 라는 함수를 @override해서 각각을 컨트롤러로 관리해야
//관리해주지 않으면
//각각의 pageview마다 앱에서 사용되는 메모리를 많이 소모

class PageViewPage extends StatelessWidget {
  //var PageController = PageController();

  //dispose = 현재 할당되어 있는 메모리를 해제
  //dispose 는 현재 class가 State<>로 선언되어있을 때 사용할 수 있는 함수
  //State<>로 선언되려면 StatefulWdiget으로 설정되어 있어야 사용 가능

  // @override
  // void dispose() {
  //   PageController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PageView 연습')),
      body: PageView(
        children: [
          Container(color: Colors.red),
          Container(color: Colors.green),
          Container(color: Colors.blue),
        ],
      ),
    );
  }
}
