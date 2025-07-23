import 'first.dart';
import 'quiz-main.dart';

import 'package:flutter/material.dart';

class DatePage extends StatefulWidget {
  late Map information;

  // 생성자 만들어서 데이터 받기
  DatePage({required Map information}) {
    information = information;
    print("2.넘어온값 확인------$information");
  }

  @override
  State<DatePage> createState() {
    return DatePageState(information: information);
  }
}

class DatePageState extends State<DatePage> {
  late Map information;

  //생성자로 데이터 받기
  DatePageState({required Map information}) {
    information = information;
  }

  // 타임 피커 변수생성
  TimeOfDay? _selectedTime;
  // 시간담을 변수 생성
  String time = TimeOfDay.now().toString();

  // 시간 선택하는 기능 만들기 -----------------
  void selectTime() async {
    final TimeOfDay? picked2 = await showTimePicker(
      context: context,
      // 기본으로 설정할 시간
      initialTime: TimeOfDay.now(),
    );
    if (picked2 != null) {
      setState(() {
        _selectedTime = picked2;
        time = picked2.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter 예제')),
      body: Column(
        children: [
          Text("두번째 페이지"),
          ElevatedButton(onPressed: selectTime, child: Text("Time")),
          Padding(padding: EdgeInsets.fromLTRB(0, 0, 12, 0)),
          //시간 선택
          Text(_selectedTime != null ? time : "시간을 선택하지 않았습니다."),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FirstPage(information: information),
                ),
              );
            },
            child: Text("다음페이지"),
          ),
        ],
      ),
    );
  }
}
