import 'package:flutter/material.dart';

class TimePage extends StatefulWidget {
  late Map givenData;

  TimePage({required Map data}) {
    givenData = data;
  }

  @override
  State<TimePage> createState() {
    return TimePageState(data: givenData);
  }
}

class TimePageState extends State<TimePage> {
  late Map givenData;

  TimePageState({required Map data}) {
    givenData = data;
  }

  void selectTime() async {
    final pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    setState(() {
      givenData["time"] = pickedTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("시간 지정하기")),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  selectTime();
                },
                child: Text("시간 선택"),
              ),
              Text(
                givenData["time"] != null
                    ? givenData["time"]!.format(context)
                    : "시간이 선택되지 않았습니다.",
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              print(givenData);
            },
            child: Text("방 선택하러 가기"),
          ),
        ],
      ),
    );
  }
}
