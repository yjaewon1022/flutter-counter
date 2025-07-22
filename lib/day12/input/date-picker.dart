import 'package:flutter/material.dart';

void main() {
  return runApp(DatePickerWidget());
}

class DatePickerWidget extends StatefulWidget {
  @override
  State<DatePickerWidget> createState() => DatePickerWidgetState();
}

class DatePickerWidgetState extends State<DatePickerWidget> {
  // 날짜를 담을 수 있는 변수 선언
  DateTime? _selectedDate;
  // 시간을 담을 수 있는 변수 선언
  TimeOfDay? _selectedTime;

  void selectDate() async {
    // showDatePicker = 비동기 함수로써 사용자가 클릭했을 때
    // 실제로 날짜를 선택할 수 있는 달력을 보여주는 역할을 하는 함수
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), // 기본 날짜
      firstDate: DateTime(2000, 1, 1), // 선택 가능 최소 날짜
      lastDate: DateTime(2100, 12, 31), // 선택 가능 최대 날짜
      cancelText: "취소",
      confirmText: "확인",
    );

    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  void selectTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (picked != null) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(_selectedDate != null ? _selectedDate.toString() : '날짜를 선택하세요'),
          ElevatedButton(onPressed: selectDate, child: Text('날짜 선택하기')),
          Text(
            _selectedTime != null
                ? _selectedTime!.format(context)
                : '시간을 선택하세요',
          ),
          ElevatedButton(onPressed: selectTime, child: Text('시간 선택하기')),
        ],
      ),
    );
  }
}
