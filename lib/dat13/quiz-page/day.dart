import 'package:counter/dat13/quiz-page/time.dart';
import 'package:flutter/material.dart';

class DayPage extends StatefulWidget {
  late Map givenData;

  DayPage({required Map data}) {
    givenData = data;
  }

  @override
  State<DayPage> createState() {
    return DayPageState(data: givenData);
  }
}

class DayPageState extends State<DayPage> {
  late Map givenData;

  DayPageState({required Map data}) {
    givenData = data;
  }

  void selectDate() async {
    print(givenData);

    final pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), // 기본 날짜
      firstDate: DateTime.now(), // 선택 가능 최소 날짜
      lastDate: DateTime(2100, 12, 31), // 선택 가능 최대 날짜
    );

    setState(() {
      givenData["day"] = pickedDate;
    });

    print(givenData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("날짜 지정하기")),
      body: Column(
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
                givenData["day"] != null
                    ? givenData["day"].toString()
                    : "날짜가 선택되지 않았습니다.",
              ),
            ],
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return TimePage(data: givenData);
                  },
                ),
              );
            },
            child: Text("시간 지정하러 가기"),
          ),
        ],
      ),
    );
  }
}
