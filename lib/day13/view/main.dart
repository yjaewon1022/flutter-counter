import 'package:counter/day13/navigation/first.dart';
import 'package:counter/day13/navigation/second.dart';
import 'package:counter/day13/view/dismissible.dart';
import 'package:counter/day13/view/list-wheel-scroll-view.dart';
import 'package:counter/day13/view/reorderable-list-view.dart';
import 'package:counter/day13/view/tab-bar-view.dart';
import 'package:flutter/material.dart';
import 'single-child-scroll-view.dart';
import './page-view.dart';
import './grid-view.dart';
import './list-view.dart';

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
  //
  int number = 12341234;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter 예제')),
      body: Column(
        children: [
          //navigator 사용해보기
          // 앱을 처음 켜게되면 네비게이터는 빈 배열(main.dart)로 [] 사용자가 이동한 페이지를 가지고 있음
          // first페이지로 이동시 push -> [firstPage()]
          // 이전페이지로 이동시 pop -> [] 다시 빈배열로 바뀜 (main.dart)로 이동
          ElevatedButton(
            onPressed: () {
              // 버튼 클릭시 Navigator.push 작동 -----------
              // push해서 firstpage로 화면 이동
              // 위에 firstpage import 되있음
              // MaterialPageRoute : 페이지이동 도와줌
              Navigator.push(
                context,

                // 다음 페이지로 데이터 전달하기
                // MaterialPageRoute(builder: (context) => FirstPage()
                //MaterialPageRoute(builder: (context) => FirstPage(data:옮길데이터)
                MaterialPageRoute(
                  builder: (context) => FirstPage(data: number),
                ),
              );
            },
            child: Text("첫번째 페이지로 이동"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondPage(data: number),
                ),
              );
            },
            child: Text("두번째 페이지로 이동"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListViewPage()),
              );
            },
            child: Text("리스트뷰"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GridViewPage()),
              );
            },
            child: Text("그리드뷰"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SingleChildScrollViewPage(),
                ),
              );
            },
            child: Text("싱글차일드스크롤뷰"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageViewPage()),
              );
            },
            child: Text("페이지뷰"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TabBarViewPage()),
              );
            },
            child: Text("탭바뷰"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListWheelScrollViewPage(),
                ),
              );
            },
            child: Text("리스트휠스크롤뷰"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DismissibleViewPage()),
              );
            },
            child: Text("dismissible"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ReorderableListViewPage(),
                ),
              );
            },
            child: Text("ReorderableListView"),
          ),
        ],
      ),
    );
  }
}
