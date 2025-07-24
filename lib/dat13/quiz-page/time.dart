import 'package:counter/dat13/quiz-page/room.dart';
import 'package:flutter/material.dart';

class TimePage extends StatefulWidget {
  late Map givenData;

  TimePage({required Map data}) {
    print("data: $data");
    givenData = data;
  }

  @override
  State<StatefulWidget> createState() {
    return TimePageState(data: givenData);
  }
}

class TimePageState extends State<TimePage> {
  //이전 화면에서 데이터를 받을게 있다면 해당 내용을 담을 수 있는 변수를 먼저 선정
  var givenData;

  //외부에서 가져온 값을 우리의 인스턴스 변수에 담기 위해서 생성자를 작성해준다.
  TimePageState({required Map data}) {
    late Map givendata;

    TimePageState({required Map data}) {
      givenData = data;
    }
  }

  void selectTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (picked != null) {
      setState(() {
        givenData['time'] = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('시간 선택하기')),
      body: Column(
        children: [
          Row(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Text('시간 선택', style: TextStyle(fontSize: 32)),

                    // 시간 예약하는 코드 작성
                    // 코드 부분에서 우리의 데이터 친구에 있는 data의 time 을 수정해주고
                    // 다음 화면으로 넘겨주면 되겠죠
                    Text(
                      givenData["time"] != null
                          ? givenData["time"]!.format(context)
                          : '시간을 선택하세요',
                    ),

                    ElevatedButton(
                      onPressed: selectTime,
                      child: Text('시간 선택하기'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RoomPage(data: givenData),
                          ),
                        );
                      },
                      child: Text('방 정하러 가기'),
                    ),

                    Text("$givenData"),
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
