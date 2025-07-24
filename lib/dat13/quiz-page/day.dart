import 'package:counter/dat13/quiz-page/time.dart';
import 'package:flutter/material.dart';

class DayPage extends StatefulWidget {
  var givenData;

  DayPage({required Map data}) {
    givenData = data;
  }

  @override
  State<StatefulWidget> createState() {
    return DayPageState(data: givenData);
  }
}

class DayPageState extends State<DayPage> {
  //이전 화면에서 데이터를 받을게 있다면 해당 내용을 담을 수 있는 변수를 먼저 선정
  var givenData;

  //외부에서 가져온 값을 우리의 인스턴스 변수에 담기 위해서 생성자를 작성해준다.
  DayPageState({required Map data}) {
    givenData = data;
  }

  void selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), // 기본 날짜
      firstDate: DateTime(2000, 1, 1), // 선택 가능 최소 날짜
      lastDate: DateTime(2100, 12, 31), // 선택 가능 최대 날짜
    );

    if (picked != null) {
      setState(() {
        givenData["day"] = picked;
      });

      print(givenData);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter 예제')),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    givenData["day"] != null
                        ? givenData["day"].toString()
                        : '날짜를 선택하세요',
                  ),
                  ElevatedButton(onPressed: selectDate, child: Text('날짜 선택하기')),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TimePage(data: givenData),
                    ),
                  );
                },
                child: Text('시간 지정하러 가기'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
