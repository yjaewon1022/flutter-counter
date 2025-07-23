// 호텔 예약 화면
// 기능
// 1. 날짜와 시간 선택,
// 2. 방 선택 [스위트룸 오션뷰 시티뷰]
// 3. 이름 입력
// 4. 아침식사서비스 체크 기능
// 5. 마지막 동의서 체크 기능 [이 호텔에 묵는 것을 동의합니다.]
//6. elevated button 클릭시 -> 사용자의 예약정보를 반환하는 alertDialog 발생
// alert 내용은 이하 :
// [000님의 호텔 예약 결과
//
// 묵으실 날짜 : 0000-00-00
// 묵으실 시간 : AM 00:00
// 호텔방 옵션 : 스위트룸
// 아침식사 서비스 여부 : 없음]

// date-picker 날짜 선택
// time picker 시간 선택

import 'package:flutter/material.dart';

void main() {
  runApp(Quiz1Widget());
}

class Quiz1Widget extends StatefulWidget {
  @override
  State<Quiz1Widget> createState() => Quiz1WidgetState();
}

class Quiz1WidgetState extends State<Quiz1Widget> {
  // 데이트 피커 변수생성
  DateTime? _selectedDate;
  // 날짜담을 변수 생성
  String date = DateTime.now().toString(); //"2025-"

  // 타임 피커 변수생성
  TimeOfDay? _selectedTime;
  // 시간담을 변수 생성
  String time = TimeOfDay.now().toString();

  // 날짜 선택하는 기능 만들기 -----------------
  void selectDate() async {
    //showDatePicker 를 이용해서 달력 세부사항 지정
    // final로 지정해서 변경 불가능하게 설정해줌.
    final DateTime? picked = await showDatePicker(
      context: context,
      //기본날짜
      initialDate: DateTime.now(),
      //선택가능한 최소날짜
      firstDate: DateTime(2025),
      //선택가능한 최대날짜
      lastDate: DateTime(2027),
      // 취소버튼의 텍스트 변경가능
      cancelText: "취소",
    );

    if (picked != null) {
      setState(() {
        _selectedDate = picked;
        date = picked.toString().substring(0, 10);
        print(date);
      });
    }
  }

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

  // 방선택 변수 생성
  String? selectedRoom;

  // 이름 받을 컨트롤러 생성
  var controller = TextEditingController();
  // 이름 변수 생성
  String? getName;

  // 아침식사 여부  라디오버튼 변수 생성
  bool isOn = false;

  // 예약확인 체크박스 변수 생성
  bool isReservationChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Column(
            children: [
              Row(
                children: [
                  //버튼
                  ElevatedButton(onPressed: selectDate, child: Text("Date")),
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 12, 0)),
                  //날짜를 선택했다면 날짜보여줘, 없다면 string 문장출력해줘
                  Text(_selectedDate != null ? date : "날짜를 선택하세요"),
                ],
              ),

              Row(
                children: [
                  ElevatedButton(onPressed: selectTime, child: Text("Time")),
                  Padding(padding: EdgeInsets.fromLTRB(0, 0, 12, 0)),
                  //시간 선택
                  Text(_selectedTime != null ? time : "시간을 선택하지 않았습니다."),
                ],
              ),

              Row(
                children: [
                  // 방선택 : 드랍다운
                  DropdownButton(
                    value: selectedRoom,
                    items: [
                      DropdownMenuItem(value: "스위트룸", child: Text("스위트룸")),
                      DropdownMenuItem(value: "오션뷰", child: Text("오션뷰")),
                      DropdownMenuItem(value: "시티뷰", child: Text("시티뷰")),
                    ],
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedRoom = newValue;
                      });
                    },
                    hint: Text("방 선택"),
                  ),

                  if (selectedRoom == null)
                    Text("방을 선택하지 않았습니다.")
                  else if (selectedRoom != null)
                    Text("$selectedRoom를 선택하셨습니다."),
                ],
              ),

              Text("예약자 성함"),
              // 이름받기 textfield
              // 엘리베이티드버튼 누르면 값을 컨트롤러가 보내줘야함!!
              TextField(
                controller: controller, //컨트롤러
                decoration: InputDecoration(
                  labelText: "이름을 입력하세요.",
                  border: OutlineInputBorder(),
                ),
              ),

              Row(
                children: [
                  // 아침식사 서비스 스위치버튼  (row로 묶어주기
                  Text("아침식사를 하시겠습니까?"),
                  Switch(
                    value: isOn,
                    onChanged: (bool value) {
                      setState(() {
                        isOn = value;
                      });
                    },
                  ),
                ],
              ),

              // 예약 동의 체크 row로 묶어주기
              Row(
                children: [
                  Text("예약을 진행 하시겠습니까?"),
                  Checkbox(
                    value: isReservationChecked,
                    onChanged: (value) {
                      setState(() {
                        isReservationChecked = value!;
                      });
                    },
                  ),
                ],
              ),

              // 최종 버튼 -> alert 띄우기
              ElevatedButton(
                onPressed: () {
                  // 하나라도 선택하지 않으면 예약이 되면 안됨
                  if (controller.text.isEmpty ||
                      selectedRoom == null ||
                      isOn == false) {
                    // 예약불가 알림창 띄우기
                    showCannotMakeReservationDialog(context);
                  } else {
                    // 값을 모두 입력했다면~~~

                    // 이름 변수에 담고
                    getName = controller.text;
                    // 지워주기
                    controller.text = "";
                    // 예약 알림 alert화면 띄우기
                    showAlertDialog(
                      context,
                      getName!,
                      date,
                      time,
                      selectedRoom,
                      isOn,
                    );
                  }
                },
                child: Text("예약하기"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// alertDialog 화면 --------
void showAlertDialog(
  BuildContext context,
  String getName,
  String date,
  String time,
  String? selectedRoom,
  bool isOn,
) async {
  await showDialog(
    context: context,
    barrierDismissible: false, //알림박스 밖을 눌렀을때 나가게 할것인지
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('$getName님의 호텔 예약 결과'), //알림제목
        content: Text("""
묵으실 날짜 : $date
묵으실 시간 : $time
호텔방 옵션 : $selectedRoom
아침식사 서비스 여부 : ${isOn ? "있음" : "없음"}
"""), //알림내용
        // actions 사용자 선택에 맞춰 반응할 메뉴
        actions: <Widget>[
          TextButton(
            child: const Text('OK'), // 누를수 있는 텍스트 버튼
            onPressed: () {
              //Navigator.pop 특별한동작없음
              Navigator.pop(context);
            },
          ),
          TextButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}

// 하나라도 안썼을 경우 띄워줄 alert
void showCannotMakeReservationDialog(BuildContext context) async {
  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("예약불가"),
        actions: <Widget>[
          TextButton(
            child: const Text('OK'), // 누를수 있는 텍스트 버튼
            onPressed: () {
              //Navigator.pop 특별한동작없음
              Navigator.pop(context);
            },
          ),
          TextButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}
