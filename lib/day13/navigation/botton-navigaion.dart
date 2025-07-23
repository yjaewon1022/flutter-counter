import 'package:counter/day12/quiz2.dart';
import 'package:flutter/material.dart';

import '../../day12/quiz.dart';
import '../../day12/quiz2.dart';
import '.././elevated-button.dart';
import '.././text-button.dart';
import '../outline-button.dart';
import '../icon-button.dart';

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

  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  final List<Widget> _widgetOptions = <Widget>[
    ColorBGWidget(),
    ElevatedButtonWidget(),
    TextButtonWidget(),
    OutLineButtonWidget(),
    IconButtonWidget(),
  ];

  final PageController _pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter 예제')),
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          Scaffold(
            body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.collections_rounded),
                  label: "무지개 버튼",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.collections_rounded),
                  label: "엘리베이티드버튼",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.collections_rounded),
                  label: "텍스트버튼",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.collections_rounded),
                  label: "아웃라인버튼",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.collections_rounded),
                  label: "아이콘버튼",
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.white,
              backgroundColor: Colors.blueAccent,
              onTap: _onItemTapped,
            ),
          ),
        ],
      ),
    );
  }
}
