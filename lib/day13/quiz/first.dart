import 'quiz-main.dart';
import 'date.dart';
import 'package:flutter/material.dart';

// void main() {
//   return runApp(FirstPage());
// }

class FirstPage extends StatefulWidget {
  late Map information;
  // 생성자 만들어서 데이터 받기
  FirstPage({required Map information}) {
    information = information;
    print("firstData------$information");
  }

  @override
  State<FirstPage> createState() {
    return FirstPageState(information: information);
  }
}

class FirstPageState extends State<FirstPage> {
  //이전 페이지에서 값 받아오기
  // 1. 담을 변수 선언
  late Map information;
  // 외부에서가져온 데이터를 받기 위해서 생성자를 사용한다.
  // 위에 함수에서부터 끌어오는거임.
  FirstPageState({required Map information}) {
    information = information;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter 예제')),
      body: Column(
        children: [
          Text("첫번째 페이지"),
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
              // Navigator.push(
              //     context,
              //    MaterialPageRoute(
              //      builder: (context) => ThirdPage(data: information),
              //    ),
              //   );
            },
            child: Text("두번째 페이지로 가기"),
          ),
          ElevatedButton(
            onPressed: () {
              // 뒤로가기
              Navigator.pop(context);
            },
            child: Text("뒤로 가기"),
          ),
          Text("$information"),
        ],
      ),
    );
  }
}
