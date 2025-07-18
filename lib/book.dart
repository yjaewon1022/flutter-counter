// Material 이라고 부르는 안드로이드 운영체제 전용 그래픽 라이브러리
import 'package:flutter/material.dart';
// Apple 전용 그래픽 라이브러리 도 있음!
// import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final storeName = const Text(
      '롯데리아',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w800,
        fontFamily: 'Roboto',
        letterSpacing: 0.5,
        fontSize: 25,
      ),
    );

    final description = Text("맛있는 햄버거");

    //가게 이름과 설명을 합친 그룹 하나 만들기
    final storegroup = Container(
      //좌우 여백을 주는 기능
      //Container : 범위를 지정해서 그 범위 내의 스타일 또는 여백 등을 지정하는 클래스
      //그렇기 때문에 한 가지 위젯만 담을 수 있음
      //한 가지 위젯만 담는다 = child(단수)
      //여러 가지 위젯 담을 수 있다 = children (복수)
      padding: const EdgeInsets.all(20), //좌우 항상 20의  여백
      child: Column(children: [storeName, description]),
    );

    final item1 = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        const Icon(Icons.star, color: Colors.black),
      ],
    );
    final item2 = const Text(
      '170 Reviews',
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w800,
        fontFamily: 'Roboto',
        letterSpacing: 0.5,
        fontSize: 20,
      ),
    );

    final item3 = Icon(Icons.kitchen, color: Colors.green[500]);
    final item4 = Icon(Icons.timer, color: Colors.green[500]);
    final item5 = Icon(Icons.restaurant, color: Colors.green[500]);
    final item6 = const Text('kitchen');

    final item7 = const Text('timer');

    final item8 = const Text('restarant');

    //가게 이름을 맨 위에 적어보자
    //가게 이름과,group1,group2의 바로 위에 올라갈 수 있게 만들어보자
    //그룹으로 하나로 묶어줘야 같이 붙을 수 있다

    final group1 = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [item1, item2],
    );

    final group3 = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [item4, item7],
    );

    final group4 = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [item5, item8],
    );

    final group2 = DefaultTextStyle.merge(
      style: TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.w800,
        fontFamily: 'Roboto',
        letterSpacing: 0.5,
        fontSize: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [item3, item6],
          ),
          group3,
          group4,
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
    //가게 이름을 맨 위에 띄우기
    //가게 이름과 그룹1,그룹2의 바로 위에 올라갈 수 있게 만들기
    //
    final namegroup = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [storegroup, groupAggregated],
    );
    return MaterialApp(
      title: 'App Title',
      home: Scaffold(
        appBar: AppBar(title: const Text("AppBar Title")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [namegroup],
        ),
      ),
    );
  }
}
