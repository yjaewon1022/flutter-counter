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
        // 1 x 1 = 1 | 2 x 1 = 2  | 3 x 1 = 3  |... | 8 x 1 = 8  | 9 x 1 = 9
        // 1 x 9 = 9 | 2 x 9 = 18 | 3 x 9 = 27 |... | 8 x 9 = 72 | 9 x 9 = 81
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 2.0,
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
