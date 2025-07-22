import 'package:counter/day12/input/checkbox.dart';
import 'package:counter/day12/input/date.picker.dart';
import 'package:counter/day12/input/dropdown.dart';
import 'package:counter/day12/input/radio.dart';
import 'package:counter/day12/input/slider.dart';
import 'package:counter/day12/input/switch.dart';
import 'package:counter/day12/quiz.dart';
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

  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  final List<Widget> _widgetOptions = <Widget>[
    SwitchWidget(),
    CheckBoxWidget(),
    RadioWidget(),
    SliderWidget(),
    dropDownWidget(),
    DatePickerWidget(),
    QuizWidget(),
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
                  icon: Icon(Icons.switch_access_shortcut),
                  label: "스위치",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.check_box),
                  label: "체크박스",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.radio_button_checked),
                  label: "라디오버튼",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.slideshow),
                  label: "슬라이드",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.arrow_drop_down),
                  label: "드랍다운",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.date_range),
                  label: "날짜 선택",
                ),
                BottomNavigationBarItem(icon: Icon(Icons.hotel), label: "예약"),
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
