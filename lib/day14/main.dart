// 외부 라이브러리 사용하기 실습
// https://pub.dev/packages/url_launcher

import 'package:counter/day14/audioplayer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "외부 라이브러리 설치", home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  final Uri _url = Uri.parse('https://naver.com');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "외부 라이브러리 설치",
      home: Scaffold(
        appBar: AppBar(title: Text("외부 라이브러리 설치 및 사용")),
        body: SingleChildScrollView(
          // 기존 텍스트의 폰트를 변경하고 싶었을 땐 다음과 같이 작성을 해야 했으나,
          // child: Text('안녕하세요', style: TextStyle(fontFamily: "~~~")),
          // 외부 라이브러리 google_fonts 를 설치하며, 다음과 같이 변경된 것을 확인할 수 있음
          child: Column(
            children: [
              Text('Hello', style: GoogleFonts.notoSerif(fontSize: 32)),
              // 버튼과 같이 사용자의 입력을 통해서 특정 사이트나 앱 으로 연결하고 싶을 때
              // url_launcher 라이브러리를 사용한다.
              ElevatedButton(onPressed: _launchUrl, child: Text("페이지 이동")),
              ElevatedButton(
                onPressed: () {
                  // AudioPage 로 이동하게 해주는 기능 추가
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      // builder: (BuildContext context) => AudioPage(),
                      builder: (BuildContext context) {
                        return AudioPage();
                      },
                    ),
                  );
                },
                child: Text("MP3 플레이어 화면으로 이동하기"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
