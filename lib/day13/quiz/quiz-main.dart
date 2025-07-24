// day12의 기존 호텔예약 화면에서
// 각 기능을 다른 페이지로 만든다.
// 모두 입력해야 버튼을 활성화 시켜서 다음단계로 갈 수 있다.

import 'package:counter/day13/quiz/day.dart';

import 'date.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final _title = 'Flutter 예제';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: _title, home: const MyStatefulWidget());
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => MyStatefulWidgetState();
}

class MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "호텔예약어플", home: Hotel());
  }
}

// 호텔 클래스 생성
class Hotel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HotelState();
  }
}

class HotelState extends State<Hotel> {
  // 사용자정보 담을 map생성
  Map data = {
    "name": "",
    "date": "",
    "time": "",
    "room": "",
    "breakfast": "없음",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("예약하기")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Text("호텔 예약 프로그램", style: TextStyle(fontSize: 16)),
              Text("눌러서예약하세요"),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return Daypage(data: data);
                      },
                    ),
                  );
                },
                child: Text("예약하기"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
