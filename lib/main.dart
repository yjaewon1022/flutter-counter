import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Appbar 센터 정렬
    final appBar = AppBar(
      title: const Text('Multiplication Window'),
      centerTitle: true,
    );

    return MaterialApp(
      title: 'Multiplication Window',
      home: Scaffold(
        appBar: appBar,
        // body 부분에 1단 ~ 9단까지 구구단 출력 화면
        // 1 x 1 = 1 부터 9 x 9 = 81까지
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, // 4개의 열
            childAspectRatio: 1.1, // 가로 세로 비율
            crossAxisSpacing: 7.0, // 열 간격
          ),
          itemCount: 81,
          itemBuilder: (context, index) {
            final row = index ~/ 9 + 1;
            final col = index % 9 + 1;
            return Center(
              child: Text(
                '$row x $col = ${row * col}',
                style: const TextStyle(fontSize: 16),
              ),
            );
          },
        ),
      ),
    );
  }
}
