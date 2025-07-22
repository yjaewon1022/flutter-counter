// 간단한 호텔 예약화면을 만들어보고자 합니다.
// 이 화면에서는 다음의 기능을 만들어야 합니다.
// 1. 호텔에 묵을 날짜, 시간을 설정할 수 있어야 합니다.
// 2. 묵을 호텔방을 다음의 목록 중에서 하나를 선택해야 합니다. (스위트룸, 오션뷰, 시티뷰)
// 3. 호텔에 묵으실 사용자의 이름을 입력해야 합니다.
// 4. 호텔의 옵션 중 하나인 아침식사 서비스를 키고 끌 수 있는 기능이 들어가야 합니다.
// 5. 이 4가지의 기능을 전부 선택하고 난 후에, [이 호텔에 묵는 것을 동의합니다.] 라는 내용의
//    체크박스가 존재하여, 마지막에 선택을 할 수 있어야 합니다.
// 6. 이 체크박스를 선택한 후에, 맨 밑에 있는 ElevatedButton을 클릭했을 때
//    사용자의 예약 정보를 반환하는 AlertDialog가 발생해야 합니다.

// 최종 AlertDialog 내용은 다음과 같습니다.
// 제목: OOO님의 호텔 예약 결과
// 내용:
// 묵으실 날짜 : 0000-00-00
// 묵으실 시간 : AM 00:00
// 호텔방 옵션 : 스위트룸
// 아침식사 서비스 여부 : 없음

// 묵으실 날짜 부분에서 0000-00-00은 0000-00-00 00:00:00.000 으로 떠도 괜찮습니다.

import 'package:flutter/material.dart';

void main() {
  return runApp(HotelReservationWidget());
}

class HotelReservationWidget extends StatefulWidget {
  @override
  State<HotelReservationWidget> createState() => HotelReservationWidgetState();
}

class HotelReservationWidgetState extends State<HotelReservationWidget> {
  // 1. 호텔에 묵을 날짜, 시간을 설정할 수 있어야 합니다.
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  // 2. 묵을 호텔방을 다음의 목록 중에서 하나를 선택해야 합니다. (스위트룸, 오션뷰, 시티뷰)
  String? room;

  // 3. 호텔에 묵으실 사용자의 이름을 입력해야 합니다.
  String? name;
  var controller = TextEditingController();

  // 4. 호텔의 옵션 중 하나인 아침식사 서비스를 키고 끌 수 있는 기능이 들어가야 합니다.
  bool getMorningService = false;

  // 5. 이 4가지의 기능을 전부 선택하고 난 후에, [이 호텔에 묵는 것을 동의합니다.] 라는 내용의
  //    체크박스가 존재하여, 마지막에 선택을 할 수 있어야 합니다.
  bool userAgreed = false;

  // 날짜를 selectedDate 변수에 저장하는 기능을 하는 함수
  void selectDate() async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), // 기본 날짜
      firstDate: DateTime(2000, 1, 1), // 선택 가능 최소 날짜
      lastDate: DateTime(2100, 12, 31), // 선택 가능 최대 날짜
    );

    setState(() {
      selectedDate = pickedDate;
    });
  }

  // 시간을 selectedTime 변수에 저장하는 기능을 하는 함수
  void selectTime() async {
    final pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    setState(() {
      selectedTime = pickedTime;
    });
  }

  void changeText(String value) {
    setState(() {
      name = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        selectDate();
                      },
                      child: Text("날짜 선택"),
                    ),
                    Text(
                      selectedDate != null
                          ? selectedDate.toString()
                          : "날짜가 선택되지 않았습니다.",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        selectTime();
                      },
                      child: Text("시간 선택"),
                    ),
                    Text(
                      selectedTime != null
                          ? selectedTime!.format(context)
                          : "시간이 선택되지 않았습니다.",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DropdownButton(
                      hint: Text("방 선택"),
                      value: room,
                      items: [
                        DropdownMenuItem(value: "스위트룸", child: Text("스위트룸")),
                        DropdownMenuItem(value: "오션뷰", child: Text("오션뷰")),
                        DropdownMenuItem(value: "시티뷰", child: Text("시티뷰")),
                      ],
                      onChanged: (value) {
                        setState(() {
                          room = value;
                        });
                      },
                    ),
                    if (room != null) Text(room!),
                    if (room == null) Text("방을 선택하지 않았습니다."),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "이름",
                    border: OutlineInputBorder(),
                  ),
                  // // 입력창에 값을 바꾸는 방법 1. onChanged 사용
                  // onChanged: (value) {
                  //   changeText(value);
                  // },
                  // 입력창에 값을 바꾸는 방법 2. TextEditingController 사용
                  controller: controller,
                ),
                // if (name != null) Text(name!),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("아침식사 서비스 이용 여부"),
                    Switch(
                      value: getMorningService,
                      onChanged: (value) {
                        setState(() {
                          getMorningService = value;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("이 호텔에 묵는 것을 동의합니다."),
                    Checkbox(
                      value: userAgreed,
                      onChanged: (value) {
                        setState(() {
                          userAgreed = value!;
                        });
                      },
                    ),
                  ],
                ),

                // 6. 이 체크박스를 선택한 후에, 맨 밑에 있는 ElevatedButton을 클릭했을 때
                //    사용자의 예약 정보를 반환하는 AlertDialog가 발생해야 합니다.
                ElevatedButton(
                  onPressed: () {
                    // 모든 필수값에 값이 하나라도 없으면 예약이 되서는 안됨.
                    print("name: ${controller.text}");
                    print("selectedDate: $selectedDate");
                    print("selectedTime: $selectedTime");
                    print("room: $room");

                    if (controller.text.isEmpty ||
                        selectedDate == null ||
                        selectedTime == null ||
                        room == null ||
                        userAgreed == false) {
                      // 예약할 수 없음! 이라는 알림창을 띄우고
                      showCannotMakeReservationDialog(context);
                    } else {
                      // 예약 알림창 띄우기
                      showAlertDialog(
                        context,
                        controller.text,
                        selectedDate!,
                        selectedTime!,
                        room!,
                        getMorningService,
                      );
                    }

                    // 알림창 띄우기
                  },
                  child: Text("예약 확정하기"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void showAlertDialog(
  BuildContext context,
  String name,
  DateTime date,
  TimeOfDay time,
  String room,
  bool service,
) async {
  await showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("$name님의 호텔 예약 결과"),
        content: Text("""
묵으실 날짜 : $date
묵으실 시간 : $time
호텔방 옵션 : $room
아침식사 서비스 여부 : ${service ? "있음" : "없음"}
"""),
        actions: <Widget>[
          TextButton(
            child: Text("OK"),
            onPressed: () {
              Navigator.pop(context);
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

void showCannotMakeReservationDialog(BuildContext context) async {
  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("예약 불가"),
        content: Text("모든 입력값을 입력해주셔야 예약이 가능합니다!"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("확인"),
          ),
        ],
      );
    },
  );
}
