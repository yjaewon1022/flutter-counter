//간단한 호텔 예약화면을 만들어보고자 합니다.
//이 화면에서는 다음의 기능을 만들어야 합니다.
//1.호텔에 묵을 날짜, 시간을 설정할 수 있어야 합니다.
//2.묵을 호텔방을 다음의 목록 중에서 하나를 선택해야 합니다.(스위트룸,오션뷰,시티뷰)
//3.호텔에 묵으실 사용자의 이름을 입력해야 합니다.
//4.호텔의 옵션 중 하나인 아침식사 서비스르 키고 끌 수 있는 기능이 들어가야 합니다.
//5. 4가지 기능을 전부 선택하고 난 후에 [이 호텔에 묵는 것을 동의합니다.]라는 내용의
//   체크박스가 존재하며,마지막에 선택을 할 수 있어야 합니다.
//6.체크박스를 선택한 후, 맨 밑에 있는 ElevatedButton을 클릭했을 때
//  사용자의 예약 정보를 반환하는 AlertDialog가 발생해야합니다.

//최종 AlertDialog 내용은 다음과 같습니다.
//제목 : 000님의 호텔 예약 결과
//내용:
//묵으실 날짜 : 0000.00.00
//묵으실 시간 : AM 00:00
//호텔방 옵션 : 스위트룸
//아침식사 서비스 여부 : 없음

//

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  return runApp(QuizWidget());
}

class QuizWidget extends StatefulWidget {
  @override
  State<QuizWidget> createState() => QuizWidgetState();
}

class QuizWidgetState extends State<QuizWidget> {
  // 호텔에 묵을 날짜, 시간을 설정할 수 있어야 합니다.
  // 1. 인스턴스 변수로 날짜, 시간 을 담을 수 있는 변수를 선언한다.
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;
  //2.묵을 호텔방을 다음의 목록 중에서 하나를 선택해야 합니다.(스위트룸,오션뷰,시티뷰)
  String? room;

  //4.호텔의 옵션 중 하나인 아침식사 서비스르 키고 끌 수 있는 기능이 들어가야 합니다.
  bool morning = false;

  bool? isChecked = false;

  var controller = TextEditingController();

  void selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), // 기본 날짜
      firstDate: DateTime(2000, 1, 1), // 선택 가능 최소 날짜
      lastDate: DateTime(2100, 12, 31), // 선택 가능 최대 날짜
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
    // 어떤 클래스를 이용해서 실제로 화면에 Text를 띄웠을까요?
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Text(
              _selectedDate != null ? _selectedDate.toString() : '날짜를 선택하세요',
            ),
            ElevatedButton(onPressed: selectDate, child: Text('날짜 선택하기')),
            Text(
              _selectedTime != null
                  ? _selectedTime!.format(context)
                  : '시간을 선택하세요',
            ),

            ElevatedButton(onPressed: selectTime, child: Text('시간 선택하기')),
            DropdownButton(
              items: [
                DropdownMenuItem(value: '스위트룸', child: Text('스위트룸')),
                DropdownMenuItem(value: '오션뷰', child: Text('오션뷰')),
                DropdownMenuItem(value: '시티뷰', child: Text('시티뷰')),
              ],
              value: room,
              onChanged: (String? newvalue) {
                setState(() {
                  room = newvalue;
                });
              },
              hint: Text('room'),
            ),

            TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: '이름을 입력하세요',
                border: OutlineInputBorder(),
              ),

              // onChanged 기능을 이용하면 사용자가 입력창의 내용을 바꿀 때 마다
              // 안에 있는 함수가 실행이 되는구나!
            ),
            if (controller.text.isNotEmpty) Text(controller.text),
            //이 코드 if (controller.text.isNotEmpty) Text(controller.text) 를
            //실행하면 실제 화면에서 보이지는 않음
            //하지만 이를 버튼이나 다른 추가 기능을 통해
            //controller.text 를 출력하면 같이 보이게 됨.
            Row(
              children: [
                Text('아침식사'),
                Switch(
                  value: morning,
                  activeColor: Colors.red,
                  onChanged: (value) {
                    setState(() {
                      morning = value;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: [
                Text('이 호텔에 묵는 것을 동의합니다.'),
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                print('name');
                //모든 필수값에 값이 하나라도 없으면 예약이 되면 안 됨.

                // showAboutDialog(context, name);
                //알림창 띄워주기
                setState(() {
                  controller.text;
                });
              },
              child: Text('예약'),
            ),
          ],
        ),
      ),
    );
  }
}

void showAlertDialog(BuildContext context, String name) async {
  await showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('$name님의 호텔 예약 결과'),
        content: Text(""),
        actions: <Widget>[],
      );
    },
  );
}

void showCannotWakeReservatinDialog(BuildContext context) async {
  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(''),
        content: Text(''),
        actions: <Widget>[
          TextButton(
            child: Text("OK"),
            onPressed: () {
              Navigator.pop(context, "OK");
            },
          ),
          TextButton(
            child: Text("Cancel"),
            onPressed: () {
              Navigator.pop(context, "Cancel");
            },
          ),
        ],
      );
    },
  );
}
