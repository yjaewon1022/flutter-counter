// BottomNavigationBar 에 Color 라는 이름을 가진 Item을 하나 생성하고,
// 해당 아이템을 클릭하면
// 화면의 AppBar 부분에 ['좋아하는 색상 고르기'] 라는 이름을 가지도록 생성하고
// 빨 주 노
// 초 파 남
// 보 흰 검
// 에 해당하는 박스(Container)를 100 x 100 픽셀의 크기로 만들되,
// 좌우 여백과 상하 여백이 존재하게 만들어보세요.

import 'package:flutter/material.dart';
// import 'book.dart';
// import 'gugudan.dart';
// import 'star.dart';
// import 'color-select.dart';
// import 'hello.dart';
import 'day11/textfield/normal.dart';
// import 'textfield/number.dart';
// import 'textField/password.dart';
// import 'textField/multiline.dart';
// import 'textField/maxlength.dart';
import 'day9/note.dart';
// import 'textField/button-input.dart';
import 'day11/day11-quiz.dart';

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
    // ColorSelect(),
    // Book(),
    // Gugudan(),
    // Star(),
    // HelloWidget(),
    NormalTextFieldWidget(),
    // NumberTextFieldWidget(),
    // PasswordTextFieldWidget(),
    // MultiLineTextFieldWidget(),
    // MaxLengthTextFieldWidget(),
    NoteTextFieldWidget(),
    // ButtonInputTextFieldWidget(),
    CalculatorWidget(),
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
          // BottomNavigationBarItem(icon: Icon(Icons.color_lens), label: 'Color'),
          // BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          // BottomNavigationBarItem(icon: Icon(Icons.wb_cloudy), label: 'Hello'),
          // BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Star'),
          // BottomNavigationBarItem(icon: Icon(Icons.handshake), label: 'Dialog'),
          BottomNavigationBarItem(
            icon: Icon(Icons.text_fields),
            label: "기본 입력창",
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.numbers_rounded),
          //   label: '숫자 입력창',
          // ),
          // BottomNavigationBarItem(icon: Icon(Icons.lock), label: '비밀번호 입력창'),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.multiline_chart),
          //   label: '다중줄 입력창',
          // ),
          // BottomNavigationBarItem(icon: Icon(Icons.lock), label: '비밀번호 입력창'),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.multiline_chart),
          //   label: '글자수 제한 입력창',
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.multitrack_audio_outlined),
            label: '자소서 작성',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.calculate), label: '계산기'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        onTap: _onItemTapped,
      ),
    );
  }
}
