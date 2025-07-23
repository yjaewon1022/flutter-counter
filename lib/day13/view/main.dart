import 'package:counter/day13/view/dismissible.dart';
import 'package:counter/day13/view/grid-view.dart';
import 'package:counter/day13/view/list-view.dart';
import 'package:counter/day13/view/list-wheel-scroll-view.dart';
import 'package:counter/day13/view/page-view.dart';
import 'package:counter/day13/view/reorderable-list-view.dart';
import 'package:counter/day13/view/single-child-scroll-view.dart';
import 'package:counter/day13/view/tab-bar-view.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

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
  int number = 12431243;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter 예제')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListViewPage()),
              );
            },
            child: Text("ListView"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GridViewPage()),
              );
            },
            child: Text("GridView"),
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
            child: Text("SingleChildScrollView"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageViewPage()),
              );
            },
            child: Text("PageView"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TabBarViewPage()),
              );
            },
            child: Text("TabBarView"),
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
            child: Text("ListWheelScrollView"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DismissiblePage()),
              );
            },
            child: Text("Dismissible"),
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
