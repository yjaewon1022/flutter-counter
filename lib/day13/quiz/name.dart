import 'package:flutter/material.dart';

class NamePage extends StatefulWidget {
  late Map givenData;

  NamePage({required Map data}) {
    givenData = data;
  }

  @override
  State<NamePage> createState() {
    return NamePageState(data: givenData);
  }
}

class NamePageState extends State<NamePage> {
  late Map givenData;

  NamePageState({required Map data}) {
    givenData = data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("이름 작성하기")),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "이름",
                border: OutlineInputBorder(),
              ),
              // 입력창에 값을 바꾸는 방법 1. onChanged 사용
              onChanged: (value) {
                givenData['name'] = value;
              },
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("이 호텔에 묵는 것을 동의합니다."),
                Checkbox(
                  value: givenData["userAgreed"],
                  onChanged: (value) {
                    setState(() {
                      givenData["userAgreed"] = value!;
                    });
                  },
                ),
              ],
            ),

            ElevatedButton(
              onPressed: () {
                print(givenData);
              },
              child: Text("예약하기"),
            ),
          ],
        ),
      ),
    );
  }
}
