// BottomNavigationBar 에 Color 라는 이름을 가진 Item을 하나 생성하고,
// - AppBar : [좋아하는 색상고르기]
// 박스 (사이즈 100 x 100 픽셀)(좌우상하 여백)
// 빨 주 노 / 초 파 남 / 보 흰 검

//p507

import 'package:flutter/material.dart';
import './book.dart';
import './guguda.dart';
import './star.dart';
import './palette.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final _title = 'Flutter SketchApp';

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
  //PageController클래스의 객체 생성 : 메뉴 누르면 거기에 따라 화면 전환해줌
  final PageController _pageController = PageController();
  // 0,1,2로 순서정해짐
  int _selectedIndex = 0;

  //optionStyle 텍스트스타일 지정
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  //리스트형 위젯을 반환한다??
  // <widget>[] : 안에 있는게 위젯인 리스트다.
  static final List<Widget> _WidgetOptions = <Widget>[
    Book(),
    Gugudan(),
    Star(),
    Palette(),
  ];

  // 사용자가 터치함에 따라 인덱스를 바꿔서 화면전환
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //p520 dispose 메서드 오버라이딩
  // 화면전환시 덮어씌우게 되는데, 뒷화면을 제거해줌
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('Flutter Sketch Application')),
      // PageView위젯 : 대표메뉴를 보여주고, 선택한메뉴에따라 콘텐츠보여줌
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          Scaffold(
            body: Center(child: _WidgetOptions.elementAt(_selectedIndex)),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                  icon: Icon(Icons.wb_cloudy),
                  label: 'Hello',
                ),
                BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Star'),
                BottomNavigationBarItem(
                  icon: Icon(Icons.palette),
                  label: 'Color',
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
