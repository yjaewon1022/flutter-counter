import 'package:flutter/material.dart';

void main() {
  runApp(Book());
}

class Book extends StatelessWidget {
  Book({super.key});
  //p.493 플러터 소개 앱만들기
  final Map info = {
    'appTitle': 'StatelessWidget Demo',
    'appBarTitle': 'Flutter Official Site',
    'titleImageLink':
        'https://storage.googleapis.com/cms-storage-bucket/2f118a9971e4ca6ad737.png',
    'titleSectionHeader': 'Flutter on Mobile',
    'titleSectionBody': 'https://flutter.dev/multi-platform/mobile',
    'titleSectionScore': 100,
    'textSection':
        'Bring your app idea to more users from day one by'
        'building with flutter'
        '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
        '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
        '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
        '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
        '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
        '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
        '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
        '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
        '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
        '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
        '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
        '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
        '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
        '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~',
  };

  @override
  Widget build(BuildContext context) {
    // 사용할 위젯과 이미지를 객체로 만들어줌
    final titleImage = _buildTitleImage(info['titleImageLink']);
    Widget textSection = _buildTextSection(info['textSection']);
    // p.495 Theme.of(context).primaryColor 기기에서 사용하는 주색상 가져옴
    Widget buttonSection = _buildButtonSection(Theme.of(context).primaryColor);
    Widget titleSection = _buildTitleSection(
      info['titleSectionHeader'],
      info['titleSectionBody'],
      info['titleSectionScore'],
    );

    return MaterialApp(
      title: info['appTitle'],
      home: Scaffold(
        appBar: AppBar(title: Text(info['appBarTitle'])),
        // p.495 ListView 항목나열(Row위젯과 다르게 스크롤 가능!)
        body: ListView(
          children: [titleImage, titleSection, buttonSection, textSection],
        ),
      ),
    );
  }
}

// p495 함수작성 :_buildTitleImage
Image _buildTitleImage(String imageName) {
  //가로600 높이240인 이미지를 실시간으로 가져와서 보여줌/ 사이즈는 박스를 모두 커버
  return Image.network(imageName, width: 600, height: 240, fit: BoxFit.cover);
}

// p496
Container _buildTitleSection(String name, String addr, int count) {
  return Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(addr, style: TextStyle(color: Colors.grey[500])),
            ],
          ),
        ),
        // p502 스테이트풀위젯으로 만들어주기
        const Counter(),
      ],
    ),
  );
}

//p497 버튼 만드는 공간 위젯
Widget _buildButtonSection(Color color) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buildButtonColumn(color, Icons.assistant_navigation, 'Visit'),
      _buildButtonColumn(color, Icons.add_alert_sharp, 'Alarm'),
      _buildButtonColumn(color, Icons.share, 'Share'),
    ],
  );
}

//p497 버튼과 글자를 수직정렬해주는 거
Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // Icon(icon, color: color),
      // Container(
      //   margin: const EdgeInsets.only(top: 8),
      //   child: Text(
      //     label,
      //     style: TextStyle(
      //       fontSize: 13,
      //       fontWeight: FontWeight.w400,
      //       color: color,
      //     ),
      //   ),
      // ),

      // -------------------------------
      ColorChanger(color: color, icon: icon, label: label),
    ],
  );
}

// p.498
Container _buildTextSection(String section) {
  return Container(
    padding: const EdgeInsets.all(32),
    child: Text(
      section,
      softWrap: true,
      textAlign: TextAlign.justify,
      style: const TextStyle(height: 1.5, fontSize: 15),
    ),
  );
}

//p502 stateful사용해서 수정해보기
class Counter extends StatefulWidget {
  // 생성자
  const Counter({Key? key}) : super(key: key);

  @override
  //카운터스테이트 실행해줘
  State<Counter> createState() => CounterState();
}

// p503
class CounterState extends State<Counter> {
  int _counter = 0;
  bool _boolStatus = false;
  Color _statusColor = Colors.black;

  //별버튼 누르는 함수
  void _buttonPressed() {
    // setState : state를 변경하겠다
    setState(() {
      if (_boolStatus == true) {
        _boolStatus = false;
        _counter--;
        _statusColor = Colors.black;
      } else {
        _boolStatus = true;
        _counter++;
        _statusColor = Colors.red;
      }
    });
  }

  //화면에 띄워줄거 구현
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.star),
          color: _statusColor,
          onPressed: _buttonPressed,
        ),
        Text('$_counter'),
      ],
    );
  }
}

// 버튼맨들기--------------------
class ColorChanger extends StatefulWidget {
  ColorChanger({
    super.key,
    required Color color,
    required IconData icon,
    required String label,
  }) {
    inputColor = color;
    inputIcon = icon;
    inputLabel = label;
  }

  late Color inputColor;
  late IconData inputIcon;
  late String inputLabel;

  @override
  /// colorChanger의 상태를 바꿔줘 colorstate를 실행해서
  State<ColorChanger> createState() =>
      ColorState(color: inputColor, icon: inputIcon, label: inputLabel);
}

class ColorState extends State<ColorChanger> {
  // 사용자가 이 아이콘을 눌렀는지 확인할 변수, 색변경 변수 만들기
  bool _boolStatus = false;
  // 현재상태에 따른 변경될 아이콘의 색에 대한 상태를 저장하는변수
  late Color _statusColor;
  late IconData _icon;
  late String _label;

  // 생성자 사용법
  // 함수명(받을값) { 인스턴스 변수에 받은값 넣기 }
  ColorState({
    required Color color,
    required IconData icon,
    required String label,
  }) {
    _statusColor = color;
    _icon = icon;
    _label = label;
  }

  //status상태확인 함수만들기
  //사용자가 버튼을 눌렀을때 실행
  void _buttonPressed() {
    //statefulwidget은 setState를 써준다.
    setState(() {
      //실제 변경할 코드 작성
      if (_boolStatus == true) {
        _boolStatus = false;
        _statusColor = Colors.deepPurpleAccent;
      } else {
        _boolStatus = true;
        _statusColor = Colors.deepOrangeAccent;
      }
    });
  }

  // 화면구현하기
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: _buttonPressed,
          icon: Icon(_icon),
          color: _statusColor,
        ),
        // Icon(_icon, color: statusColor),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            _label,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: _statusColor,
            ),
          ),
        ),
      ],
    );
  }
}
