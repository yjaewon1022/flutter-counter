import 'package:counter/day13/navigation/first.dart';
import 'package:counter/day13/main13.dart';

import 'package:flutter/material.dart';

// void main() {
//   return runApp(SecondPage());
// }

class SecondPage extends StatefulWidget {
  var givenData;

  // 생성자 만들어서 데이터 받기
  SecondPage({required var data}) {
    givenData = data;
    print("secondData------$givenData");
  }

  @override
  State<SecondPage> createState() {
    return SecondPageState(givenData: givenData);
  }
}

class SecondPageState extends State<SecondPage> {
  var givenData;

  //생성자로 데이터 받기
  SecondPageState({required var givenData}) {
    givenData = givenData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter 예제')),
      body: Column(
        children: [
          Text("두번째 페이지"),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
            child: Text("메인으로 돌아가기"),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.pop : 이전 페이지로 이동
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FirstPage(data: givenData),
                ),
              );
            },
            child: Text("첫번째 페이지로 이동"),
          ),
          Text("$givenData"),
        ],
      ),
    );
  }
}
