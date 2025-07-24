import 'package:flutter/material.dart';

class NamePage extends StatefulWidget {
  late Map givenData;
  // 생성자
  NamePage({required Map data}) {
    givenData = data;
  }

  @override
  State<StatefulWidget> createState() {
    return NamePageState(data: givenData);
  }
}

class NamePageState extends State<NamePage> {
  late Map givenData;
  //생성자
  NamePageState({required Map data}) {
    givenData = data;
  }

  // 방선택 변수 생성
  String? selectedRoom;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("이름 작성하기")),
      body: Column(
        children: [
          Row(
            children: [
              // 방선택 : 드랍다운
              DropdownButton(
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
                hint: Text("방 선택"),
              ),

              if (givenData["room"] == null)
                Text("방을 선택하지 않았습니다.")
              else if (givenData["room"] != null)
                Text('$givenData["room"]를 선택하셨습니다.'),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (BuildContext context) {
              //       return NamePage(data: givenData);
              //     },
              //   ),
              // );
              print(givenData);
            },
            child: Text("이름 작성하러 가기"),
          ),
        ],
      ),
    );
  }
}
