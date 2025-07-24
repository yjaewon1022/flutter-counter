import 'package:flutter/material.dart';

class RoomPage extends StatefulWidget {
  late Map givenData;

  RoomPage({required Map data}) {
    givenData = data;
  }

  @override
  State<StatefulWidget> createState() {
    return RoomPageState(data: givenData);
  }
}

class RoomPageState extends State<RoomPage> {
  //이전 화면에서 데이터를 받을게 있다면 해당 내용을 담을 수 있는 변수를 먼저 선정
  var givenData;

  //외부에서 가져온 값을 우리의 인스턴스 변수에 담기 위해서 생성자를 작성해준다.
  RoomPageState({required Map data}) {
    late Map givendata;

    RoomPageState({required Map data}) {
      givenData = data;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter 예제')),
      body: Column(
        children: [
          Row(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    DropdownButton(
                      items: [
                        DropdownMenuItem(value: '스위트룸', child: Text('스위트룸')),
                        DropdownMenuItem(value: '오션뷰', child: Text('오션뷰')),
                        DropdownMenuItem(value: '시티뷰', child: Text('시티뷰')),
                      ],
                      value: givenData,
                      onChanged: (newvalue) {
                        setState(() {
                          givenData["room"] = newvalue;
                        });
                      },
                      hint: Text('room'),
                    ),
                    Text('방 선택하러가기', style: TextStyle(fontSize: 32)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
