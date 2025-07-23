import 'package:counter/dat13/navigation/first.dart';
import 'package:counter/dat13/navigation/second.dart';
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
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter 예제')),
      body: Column(
        children: [
          Text('첫 번째 페이지입니다.'),
          ElevatedButton(
            onPressed: () {
              //Navigator = 화면(페이지) 간 이동 하는 등 실제로 화면 변경
              //Push = 이후에 입력된 화면으로 이동하라! 는 명령
              //Navigator.push(context,이동할 페이지)
              // MaterialPageRoute = 어떤 페이지로 이동할지 컴퓨터에게 알려줌
              //Navigator 는 사용자가 어떤 페이지에 이동을 해왔는지 기본적으로 가지고 있음
              //기본적으로 [] 빈 배열로 사용자가 이동한 페이지들을 가지고 있게 됨
              //앱을 처음 키게 되면 Navigator는 빈배열(main.dart)파일을 가리키게 됨
              //이후에 push 를 진행하면 배열 안에 [Fistpage]를 갖게 됨

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirstPage()),
              );
            },
            child: Text('메인 페이지로 돌아가기'),
          ),
          Text('두번째 페이지입니다.'),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );
            },
            child: Text('메인 페이지로 돌아가기'),
          ),
        ],
      ),
    );
  }
}
