import 'package:counter/day13/quiz/time.dart';
import 'package:flutter/material.dart';

class Daypage extends StatefulWidget {
  late Map givenData;
  //생성자
  Daypage({required Map data}) {
    givenData = data;
  }

  @override
  State<StatefulWidget> createState() {
    return DaypageState(data: givenData);
  }
}

class DaypageState extends State<Daypage> {
  late Map givenData;
  //생성자
  DaypageState({required Map data}) {
    givenData = data;
  }

  // 체크확인하는 변수선언
  bool isChecked = false;

  // 날짜 선택하는 기능 만들기 -----------------
  void selectDate() async {
    //showDatePicker 를 이용해서 달력 세부사항 지정
    // final로 지정해서 변경 불가능하게 설정해줌.
    final DateTime? picked = await showDatePicker(
      context: context,
      //기본날짜
      initialDate: DateTime.now(),
      //선택가능한 최소날짜
      firstDate: DateTime.now(),
      //선택가능한 최대날짜
      lastDate: DateTime(2027),
      // 취소버튼의 텍스트 변경가능
      cancelText: "취소",
    );

    setState(() {
      givenData["day"] = picked.toString().substring(0, 10);
      //날짜체크확인
      isChecked = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("날짜 지정하기")),
      body: Column(
        children: [
          Row(
            children: [
              //버튼
              ElevatedButton(onPressed: selectDate, child: Text("Date")),
              Padding(padding: EdgeInsets.fromLTRB(0, 0, 12, 0)),
              //날짜를 선택했다면 날짜보여줘, 없다면 string 문장출력해줘
              Text(
                givenData["day"] != null
                    ? "${givenData["day"]}를 선택하셨습니다."
                    : "날짜를 선택하지 않았습니다.",
              ),
            ],
          ),
          ElevatedButton(
            onPressed: isChecked
                ? () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return TimePage(data: givenData);
                        },
                      ),
                    );
                  }
                : null,
            child: Text("시간 지정하러 가기"),
          ),
        ],
      ),
    );
  }
}
