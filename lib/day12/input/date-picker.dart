import 'package:flutter/material.dart';

void main() {
  return runApp(DatePickerWidget());
}

class DatePickerWidget extends StatefulWidget {
  @override
  State<DatePickerWidget> createState() => DatePickerWidgetState();
}

class DatePickerWidgetState extends State<DatePickerWidget> {
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

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

  void selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000, 1, 1),
      lastDate: DateTime(2100, 12, 31),
      cancelText: "취소",
      confirmText: "확인",
    );

    if (picked != null) {
      setState(() {
        _selectedDate = picked;
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
