// date-picker 날짜 선택
// time picker 시간 선택

import 'package:flutter/material.dart';

void main() {
  runApp(DatePickerWidget());
}

class DatePickerWidget extends StatefulWidget {
  @override
  State<DatePickerWidget> createState() => DatePickerWidgetState();
}

class DatePickerWidgetState extends State<DatePickerWidget> {
  // 데이트 피커 변수생성
  DateTime? _selectedDate;
  // 타임 피커 변수생성
  TimeOfDay? _selectedTime;

  // 날짜 선택하는 기능 만들기 -----------------
  void selectDate() async {
    //
    final DateTime? picked = await showDatePicker(
      context: context,
      //기본날짜
      initialDate: DateTime.now(),
      //선택가능한 최소날짜
      firstDate: DateTime(2000),
      //선택가능한 최대날짜
      lastDate: DateTime(2100),
      // 취소버튼의 텍스트 변경가능
      cancelText: "취소",
    );

    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  // 시간 선택하는 기능 만들기 -----------------
  void selectTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      // 기본으로 설정할 시간
      initialTime: TimeOfDay.now(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //날짜를 선택했다면 날짜보여줘, 없다면 string 문장출력해줘
          Text(_selectedDate != null ? _selectedDate.toString() : "날짜를 선택하세요"),
          //버튼
          ElevatedButton(onPressed: selectDate, child: Text("날짜선택하기")),

          Padding(padding: EdgeInsets.all(20)),

          //시간 선택
          Text(_selectedTime != null ? _selectedTime.toString() : "시간을 선택하세요"),
          ElevatedButton(onPressed: selectTime, child: Text("시간선택하기")),
        ],
      ),
    );
  }
}
