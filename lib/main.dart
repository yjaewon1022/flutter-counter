import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 구구단 만드는 프로그램
    List gugudan = [];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("[구구단 화면]"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 카운터 화면에 출력
            const Text('You have pushed the button this many times: '),
            Text('test', style: Theme.of(context).textTheme.headlineMedium),
          ],
        ),
      ),
    );
  }
}
