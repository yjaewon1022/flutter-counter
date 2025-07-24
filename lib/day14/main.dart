// 외부 라이브러리 사용하기
//pub.dev 사이트에서 볼 수 있다. https://pub.dev/
// 1. 터미널에서 install하거나
// 2. pubspec.yaml에 직접 작성하고 저장

import 'package:counter/day14/player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "외부라이브러리 가져오기", home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  // url launcher 쓰기위한 변수 선언
  final Uri _url = Uri.parse('https://naver.com');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "외부라이브러리 사용",
      home: Scaffold(
        appBar: AppBar(title: Text("외부라이브러리 설치 및 사용")),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // 구글 폰트 사용해보기 (방법다양함)
              //https://pub.dev/packages/google_fonts 참조
              // child: Text("안녕하세요", style: GoogleFonts.lato()),
              Text("abcd 안녕하세요", style: GoogleFonts.getFont('Lato')),
              Text("abcd 안녕하세요", style: GoogleFonts.roboto()),
              // url_launcher 사용해보기
              // 버튼등으로 사용자의 입력을 통해서 특정사이트나 앱으로 이동할때
              ElevatedButton(
                onPressed: _launchUrl,
                child: Text("show Flutter homepage"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return AudioPage();
                      },
                    ),
                  );
                },
                child: Text("음악재생하기"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
