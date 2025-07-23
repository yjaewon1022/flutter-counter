// 기존에 만들었었던 호텔 예약 화면의 각 기능들을 서로 다른 페이지로 만들어서
// 각 단계의 내용들을 전부 입력했을 때 "다음으로 이동하기" 버튼을 활성화 시켜서
// 다음 단계의 페이지로 넘어갈 수 있도록 하는 화면을 구현하세요.

// 구현하는 방법을 모르시겠다면 일단 폴더를 새로 만들어 각 기능들을 담당하는 파일을 만들어보세요.
// 각 페이지들로 데이터를 전달 할 때에는 다음의 Map 변수를 사용하시면 됩니다.

import 'package:flutter/material.dart';

Map data = {
  // day 의 value 는 DateTime 으로 변경
  "day": "",
  // time 의 value 는 TimeOfDay 로 변경
  "time": "",
  "room": "",
  "name": "",
  "userAgreed": false,
};

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
  // @override
  // State<Hotel> createState() {
  //   return HotelState();
  // }

  @override
  State<StatefulWidget> createState() => HotelState();
}

class HotelState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("호텔 예약하기")));
  }
}
