import 'package:flutter/material.dart';
// import '파일명'
import 'book.dart';
import 'gugudan.dart';
import 'star.dart';
import 'colors.dart';
import 'hello.dart';

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
  final List<Widget> _widgetOptions = <Widget>[
    Book(),
    Gugudan(),
    Star(),
    ColorSelect(),
  ];

  final PageController _pageController = PageController();

  int _selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

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
  Widget build(BuildContext contaxt) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Sketch Application')),
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          Scaffold(
            body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.wb_cloudy), label: 'Hello'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'star'),
          BottomNavigationBarItem(icon: Icon(Icons.plus_one), label: 'color'),
          BottomNavigationBarItem(icon: Icon(Icons.handshake), label: 'Hello'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}
