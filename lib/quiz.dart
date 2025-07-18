//ButtomNavigationBar에 color 라는 이름을 가진 Item을 하나 생성하고
//해당 아이템을 클릭하면
//화면의 AppBar 부분에 {'좋아하는 색상 고르기'}라는 이름을 가지도록 생성
//빨 주 노
//초 파 남
//보 흰 검
//에 해당하는 박스를 100x100 픽셀의 크기로 만들되,
//좌우 여백과 상하 여백이 존재하게 만들어보세요ㅜ

import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp((ColorSelect()));
}

class ColorSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 가로 : width, 세로 : height
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(color: Colors.red, width: 100, height: 100),
              Container(color: Colors.orange, width: 100, height: 100),
              Container(color: Colors.yellow, width: 100, height: 100),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(color: Colors.green, width: 100, height: 100),
              Container(color: Colors.blue, width: 100, height: 100),
              Container(color: Colors.indigo, width: 100, height: 100),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(color: Colors.purple, width: 100, height: 100),
              Container(color: Colors.grey, width: 100, height: 100),
              Container(color: Colors.black, width: 100, height: 100),
            ],
          ),
        ],
      ),
      ElevatedButton. ( onPressed: () ),
    );
  }
}
