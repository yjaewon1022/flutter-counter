import 'package:counter/dat13/view/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Uri _url = Uri.parse('https://naver.com');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  void main() => runApp(
    const MaterialApp(
      home: Material(
        child: Center(
          child: ElevatedButton(
            onPressed: _launchUrl,
            child: Text('Show homepage'),
          ),
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '외부 라이브러리 설치',
      home: Scaffold(
        appBar: AppBar(title: Text('외부 라이브러리작성')),
        body: SingleChildScrollView(
          //기존 텍스트의 폰트를 변경하고 싶을땐 다음과 같이 작성
          //child: Text('안녕하세요', Style: GoogleFonts.())
          //외부 라이브러리 google_fonts 를 설치
          child: Text('안녕하세요', style: GoogleFonts.nanumGothic(fontSize: 32)),
        ),
      ),
    );
  }
}
