import 'package:counter/day13/navigation/first.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter 예제')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // Navigator = 화면(페이지) 별 이동을 하는 등 실제로 화면을 변경해주는 친구
              // push = 이후에 입력된 화면으로 이동해라! 라는 명령
              // Navigator.push 사용방법 = Navigator.push(context, 이동할 페이지)
              // MaterialPageRoute = 어떤 페이지로 이동할지 컴퓨터에게 알려주는 친구
              // Navigator 는 사용자가 어떤 페이지에 이동을 해있는지를 기본적으로 가지고 있음
              // 기본적으로 [] 빈 배열로 사용자가 이동한 페이지들을 가지고 있게 됨
              // 앱을 처음 키게 되면 Navigator 는 빈배열 (main.dart) 파일을 가리키게 됨.
              // 이후에 push 를 진행하면 배열 안에 [FirstPage()] 라는 값이 들어가게 되고,
              // 화면을 해당 파일(페이지)로 이동하게 됨.
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirstPage()),
              );
            },
            child: Text("첫 번째 페이지로 이동"),
          ),
        ],
      ),
    );
  }
}
