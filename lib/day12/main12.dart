import 'package:flutter/material.dart';
import './switch.dart';
import 'checkbox.dart';
import 'radio.dart';
import 'slider.dart';
import 'dropdown.dart';
import 'date-picker.dart';
import 'quiz.dart';

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
    Quiz1Widget(),
    SwitchWidget(),
    CheckBoxWidget(),
    RadioWidget(),
    SliderWidget(),
    DropDownWidget(),
    DatePickerWidget(),
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
                BottomNavigationBarItem(icon: Icon(Icons.hotel), label: "호텔예약"),
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
                  label: "라디오",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.slideshow_rounded),
                  label: "슬라이더",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.arrow_drop_down),
                  label: "드랍다운",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_today_outlined),
                  label: "데이트피커",
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
