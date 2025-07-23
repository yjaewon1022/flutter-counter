// 기존에 만들었었던 호텔 예약 화면의 각 기능들을 서로 다른 페이지로 만들어서
// 각 단계의 내용들을 전부 입력했을 때 "다음으로 이동하기" 버튼을 활성화 시켜서 다음 단계의 페이지로 넘어갈 수 있도록 하는
// 화면(페이지)를 구현하세요.

import 'package:counter/day13/quiz/day.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "호텔 예약앱", home: Hotel());
  }
}

class Hotel extends StatefulWidget {
  //   @override
  // State<Hotel> createState() {
  //  return HotelState();
  // }
  @override
  State<StatefulWidget> createState() => HotelState();
}

class HotelState extends State<StatefulWidget> {
  Map data = {
    // day 의 value 는 DateTime 으로 변경
    "day": "",
    // time 의 value 는 TimeOfDay 로 변경
    "time": "",
    "room": "",
    "name": "",
    "userAgreed": false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("호텔 예약하기")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            children: [
              Text("호텔 예약 프로그램", style: TextStyle(fontSize: 16)),
              Text("아래의 버튼을 눌러서 호텔을 예약해보세요."),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return DayPage(data: data);
                      },
                    ),
                  );
                },
                child: Text("호텔 예약하기"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
