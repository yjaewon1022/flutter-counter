import 'package:counter/day13/quiz/room.dart';
import 'package:flutter/material.dart';

class TimePage extends StatefulWidget {
  late Map givenData;
  // 생성자
  TimePage({required Map data}) {
    givenData = data;
  }

  @override
  State<StatefulWidget> createState() {
    return TimePageState(data: givenData);
  }
}

class TimePageState extends State<TimePage> {
  late Map givenData;
  //생성자
  TimePageState({required Map data}) {
    givenData = data;
  }

  // 시간 선택하는 기능 만들기 -----------------
  void selectTime() async {
    final TimeOfDay? picked2 = await showTimePicker(
      context: context,
      // 기본으로 설정할 시간
      initialTime: TimeOfDay.now(),
    );
    setState(() {
      givenData["time"] = picked2.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("시간 지정하기")),
      body: Column(
        children: [
          Row(
            children: [
              ElevatedButton(onPressed: selectTime, child: Text("Time")),
              Padding(padding: EdgeInsets.fromLTRB(0, 0, 12, 0)),
              //시간 선택
              Text(
                givenData["time"] != "" ? givenData["time"] : "시간을 선택하지 않았습니다.",
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return RoomPage(data: givenData);
                  },
                ),
              );
              print(givenData);
            },
            child: Text("방 지정하러 가기"),
          ),
        ],
      ),
    );
  }
}
