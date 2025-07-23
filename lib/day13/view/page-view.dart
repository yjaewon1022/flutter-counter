import 'dart:ffi';

import 'package:flutter/material.dart';

// PageView = 화면을 좌우로 넘겨야 할 때 사용됩니다.
// PageView 를 한 번에 여러 개를 이용할 땐 주의해야할 점이 하나가 있습니다.
// dispose 라는 함수를 @override 해서 각각을 컨트롤러로 관리해주어야 함.
// 관리를 해주지 않으면 어떻게 되느냐?
// 각각의 PageView 마다 앱에서 사용되는 메모리를 많이 소모하게 됩니다.
class PageViewPage extends StatelessWidget {
  var pageController = PageController();

  // dispose = 현재 할ㄹ당되어 있는 메모리를 해제한다.
  // dispose 는 현재 class 가 State<> 로 선언 되어있을 때 사용할 수 있는 함수
  // State<> 로 선언이 되려면 StatefulWidget 으로 설정되어 있어야 실제 사용 가능
  // @override
  // void dispose() {
  //   pageController.dispose();

  //   super.dipose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("PageView 연습")),
      body: PageView(
        controller: pageController,
        children: [
          Container(color: Colors.blue),
          Container(color: Colors.red),
          Container(color: Colors.green),
        ],
      ),
    );
  }
}
