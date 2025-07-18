import 'package:flutter/material.dart';
import 'book.dart';
import 'gugudan.dart';
import 'star.dart';

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
    Book(), // HomeWidget 클래스
    Book(), // HomeWidget 클래스
    Gugudan(), // Hello ~~ 클래스
    Star(), // Star ~~ 클래스
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
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.wb_cloudy), label: 'Hello'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Star'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}
