import 'package:counter/day13/navigation/fisrt.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final _title = 'Flutter 예제';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: _title, home: const MyStatefulWidget());
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => MyStatefulWidgetState();
}

class MyStatefulWidgetState extends State<MyStatefulWidget> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter 예제')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // 이후에 입력된 화면으로 이동해라라는 명령어
              Navigator.push(
                context,
                // 페이지 이동할때 현재 페이지의 변수를 다음 페이지로 전달하는 방법
                // 전달할때 :  builder: (context) => FirstPage(data: 전달할 데이터)
                // 전달하지 않을때 : builder: (context) => FirstPage()
                MaterialPageRoute(
                  // 어떤 페이지로 이동할지 알려주는 놈
                  builder: (context) => FirstPage(data: number),
                ),
              );
            },
            child: Text("첫번째 페이지 이동"),
          ),
          Text("$number"),
        ],
      ),
    );
  }
}
