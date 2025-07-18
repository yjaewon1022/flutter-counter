import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(Star());
}

class Star extends StatelessWidget {
  Star({super.key});

  final Map info = {
    'appTitle': 'StatelessWidget Demo',
    'appBarTitle': 'Flutter Official Site',
    'titleImageLink':
        'https://storage.googleapis.com/cms-storage-bucket/2f118a9971e4ca6ad737.png',
    'titleSectionHeader': 'Flutter on Mobile',
    'titleSectionBody': 'https://flutter.dev/multi-platform/mobile',
    'titleSectionScore': 100,
    'textSection':
        'Bring your app idea to more users from day one by building with Flutter on iOS and Android simultaneously, without sacrificing features, quality, or performance. All mobile on day one: Reach your full addressable market from day one by targeting users in both ecosystems frmo a single codebase. Do more with less: Unite your mobile development team resources towards building one seamless customer experience. One experience: Release simultaneously on iOS and Android with feature parity for the best experience for all users.',
  };

  @override
  Widget build(BuildContext context) {
    final titleImage = _buildTitleImage(info['titleImageLink']);
    Widget textSection = _buildTextSection(info['textSection']);
    // 다크 테마 / 화이트 테마
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
        body: ListView(
          children: [titleImage, titleSection, buttonSection, textSection],
        ),
      ),
    );
  }
}

Image _buildTitleImage(String imageName) {
  return Image.network(imageName, width: 600, height: 240, fit: BoxFit.cover);
}

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
        Counter(),
      ],
    ),
  );
}

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

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [ColorChanger(color: color, icon: icon, labal: label)],
  );
}

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

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => CounterState();
}

class CounterState extends State<Counter> {
  int _counter = 0;
  bool _boolStatus = false;
  Color _statusColor = Colors.black;

  void _buttonPressed() {
    setState(() {
      if (_boolStatus == true) {
        _boolStatus = false;
        _counter--;
        _statusColor = Colors.black;
      } else {
        _boolStatus = true;
        _counter++;
        _statusColor == Colors.red;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.star),
          color: _statusColor,
          onPressed: _buttonPressed,
        ),
      ],
    );
  }
}

class ColorChanger extends StatefulWidget {
  ColorChanger({
    super.key,
    required Color color,
    required IconData icon,
    required String labal,
  }) {
    inputcolor = color;
    inputicon = icon;
    inputlabel = labal;
  }

  late Color inputcolor;
  late IconData inputicon;
  late String inputlabel;

  @override
  State<ColorChanger> createState() =>
      ChangeClass(color: inputcolor, icon: inputicon, label: inputlabel);
}

class ChangeClass extends State<ColorChanger> {
  ChangeClass({
    required Color color,
    required String label,
    required IconData icon,
  }) {
    _StatusColor = color;
    _label = label;
    _icon = icon;
  }

  //시용자가 이 아이콘을 눌렀는지에 대한 상태를 저장하는 변수
  bool _boolStatus = false;
  //현재 상태에 따른 변경된 아이콘의 색에 대한 상태룰 저장하는 변수
  Color _StatusColor = Colors.pink;
  late String _label;
  late IconData _icon;

  //실제로 status에 저장된 상채를 변경해 줄 수 있는 함수
  //=사용자가 아이콘 버튼을 눌렀을 떼 동작할 함수
  void _buttonPressed() {
    // setState(() {})
    setState(() {
      if (_boolStatus == true) {
        _boolStatus = false;
        _StatusColor = Colors.black;
      } else {
        _boolStatus = true;
        _StatusColor = Colors.orange;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: _buttonPressed,
          icon: Icon(_icon),
          color: _StatusColor,
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            _label,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: _StatusColor,
            ),
          ),
        ),
      ],
    );
  }
}
