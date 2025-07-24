import 'package:counter/day13/quiz/name.dart';
import 'package:flutter/material.dart';

class RoomPage extends StatefulWidget {
  late Map givenData;

  RoomPage({required Map data}) {
    givenData = data;
  }

  @override
  State<RoomPage> createState() {
    return RoomPageState(data: givenData);
  }
}

class RoomPageState extends State<RoomPage> {
  late Map givenData;

  RoomPageState({required Map data}) {
    givenData = data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("방 선택하기")),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              DropdownButton(
                hint: Text("방 선택"),
                value: givenData["room"],
                items: [
                  DropdownMenuItem(value: "스위트룸", child: Text("스위트룸")),
                  DropdownMenuItem(value: "오션뷰", child: Text("오션뷰")),
                  DropdownMenuItem(value: "시티뷰", child: Text("시티뷰")),
                ],
                onChanged: (value) {
                  setState(() {
                    givenData["room"] = value;
                  });
                },
              ),
              if (givenData["room"] != null) Text(givenData["room"]!),
              if (givenData["room"] == null) Text("방을 선택하지 않았습니다."),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return NamePage(data: givenData);
                  },
                ),
              );
            },
            child: Text("이름 입력하러 가기"),
          ),
        ],
      ),
    );
  }
}
