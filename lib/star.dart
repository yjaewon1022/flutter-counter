// 책 따라하기

// material이라고 부르는 안드로이드 운영체제 전용 그래픽 라이브러리
// 애플전용도 있음 import 'package:flutter/cupertino.dart';
// 애플만 쓰겠다. : cupertino. 안드로이드애플 둘다쓰겠다 : material.
// 패키지 : 다른 사람이 만든거 가져온거야
import 'package:flutter/material.dart';

void main() => runApp(Star());

//p430
// 스테이트리스위젯으로 만들었다.
class Star extends StatelessWidget {
  // 오버라이드 빌드 필수
  @override
  Widget build(BuildContext context) {
    // 가게명
    final storeName = const Text(
      '가게가게 가게',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w800,
        fontFamily: 'Roboto',
        letterSpacing: 0.5,
        fontSize: 25,
      ),
    );

    // 가게 설명
    final description = Text("30년 전통의 맛집입니다. 만족할만한 식사를 어쩌구 모시겠습니다 저쩌구");

    // 상호명과 설명을 container로 합친 그룹 생성
    // 범위를 정해서 그 범위내의 스타일, 여백 등을 지정하는 클래스
    // 컨테이너는 child를 쓴다.
    final storeGroup = Container(
      padding: const EdgeInsets.all(20),
      child: Column(children: [storeName, description]),
    );

    final group1 = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.star, color: Colors.green[500]),
            Icon(Icons.star, color: Colors.green[500]),
            Icon(Icons.star, color: Colors.green[500]),
            Icon(Icons.star, color: Colors.green[500]),
            const Icon(Icons.star, color: Colors.black),
          ],
        ),
        const Text(
          '170 Reviews',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontFamily: 'Roboto',
            letterSpacing: 0.5,
            fontSize: 20,
          ),
        ),
      ],
    );

    final group2 = DefaultTextStyle.merge(
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w800,
        fontFamily: 'Roboto',
        letterSpacing: 0.5,
        fontSize: 18,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.kitchen, color: Colors.green[500]),
              const Text('kitchen'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.timer, color: Colors.green[500]),
              const Text('timer'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.restaurant, color: Colors.green[500]),
              const Text('restaurant'),
            ],
          ),
        ],
      ),
    );

    final groupAggregated = Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Container(padding: const EdgeInsets.all(20), child: group1),
          group2,
        ],
      ),
    );

    //
    final nameGroup = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [storeGroup, groupAggregated],
    );

    return MaterialApp(
      //어플 이름 title
      title: 'App Title',
      //화면 구현 home
      home: Scaffold(
        appBar: AppBar(title: const Text('AppBar Title')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [nameGroup],
        ),
      ),
    );
  }
}
