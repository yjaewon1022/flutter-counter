// import 'package:counter/day11/day11-quiz.dart';
// import 'package:counter/day9/note.dart';
import 'package:flutter/material.dart';
// import 'package:counter/day12/switch.dart';
// import 'package:counter/day12/checkbox.dart';
// import 'package:counter/day12/radio.dart';
// import 'package:counter/day12/slider.dart';
// import 'package:counter/day12/dropdown.dart';
// import 'package:counter/day12/date-picker.dart';
import 'package:counter/day12/quiz.dart';
// import 'package:counter/day12/button/elevated-botton.dart';
import 'package:counter/day12/quiz2.dart';

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
    // NoteWidget(),
    // CalculatorWidget(),
    // SwitchWidget(),
    // CheckBoxWidget(),
    // RadioWidget(),
    // SliderWidget(),
    // DropdownWidget(),
    // DatePickerWidget(),
    HotelReservationWidget(),
    // ElevatedButtonWidget(),
    RainbowButtonWidget(),
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
                // BottomNavigationBarItem(
                //   icon: Icon(Icons.note_add),
                //   label: "자소서 작성",
                // ),
                // BottomNavigationBarItem(
                //   icon: Icon(Icons.calculate),
                //   label: "계산기",
                // ),
                // BottomNavigationBarItem(
                //   icon: Icon(Icons.switch_access_shortcut),
                //   label: "스위치",
                // ),
                // BottomNavigationBarItem(
                //   icon: Icon(Icons.check_box),
                //   label: "체크박스",
                // ),
                // BottomNavigationBarItem(
                //   icon: Icon(Icons.radio_button_checked),
                //   label: "라디오 버튼",
                // ),
                // BottomNavigationBarItem(
                //   icon: Icon(Icons.slideshow),
                //   label: "슬라이더",
                // ),
                // BottomNavigationBarItem(
                //   icon: Icon(Icons.arrow_drop_down),
                //   label: "드랍다운",
                // ),
                // BottomNavigationBarItem(
                //   icon: Icon(Icons.date_range),
                //   label: "날짜선택",
                // ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.hotel),
                  label: "호텔 예약",
                ),
                // BottomNavigationBarItem(
                //   icon: Icon(Icons.elevator),
                //   label: "엘리베이터 버튼",
                // ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.smart_button_outlined),
                  label: "무지개 버튼",
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
