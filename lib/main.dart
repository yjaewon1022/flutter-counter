import 'package:counter/day12/input/date-picker.dart';
import 'package:counter/day12/input/dropdown.dart';
import 'package:counter/day12/input/quiz.dart';
import 'package:counter/day12/input/radio.dart';
import 'package:counter/day12/input/slider.dart';
import 'package:flutter/material.dart';
import 'day12/input/switch.dart';
import 'day12/input/checkbox.dart';
import 'day12/button/elevated-button.dart';

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
    ElevatedButtonWidget(),
    CheckBoxWidget(),
    RadioWidget(),
    SliderWidget(),
    DropdownButtonWidget(),
    HotelReservationWidget(),
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
                  icon: Icon(Icons.calculate),
                  label: "버튼",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calculate),
                  label: "체크",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calculate),
                  label: "라디오",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calculate),
                  label: "슬라이더",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calculate),
                  label: "드랍다운",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calculate),
                  label: "예약",
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
