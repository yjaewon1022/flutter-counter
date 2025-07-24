// 음악 파일을 재생할 수 있는 외부 라이브러리 설치
// https://pub.dev/packages/audioplayers

import 'package:flutter/material.dart';

class AudioPage extends StatefulWidget {
  @override
  State<AudioPage> createState() {
    return AudioPageState();
  }
}

class AudioPageState extends State<AudioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MP3 플레이어")),
      body: Text("음악"),
    );
  }
}
