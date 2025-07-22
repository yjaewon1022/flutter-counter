import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// statefulWidget은 별다른 기능없이 state를 생성하는 기능만 가졌다.
class MyHomePage extends StatefulWidget {
  // 생성자
  const MyHomePage({super.key, required this.title});

  final String title;

  //사용자가 앱사용 후 계속해서 값을 변경할 수 있는 state를 생성하는 함수
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// State<MyHomePage> : MyHomePage라는 클래스의 state라는 뜻
class _MyHomePageState extends State<MyHomePage> {
  // 인스턴스변수 (사용자에 의해 바뀌는 값)
  int _counter = 1;

  // 함수 생성. state 클래스 내에서 사용할 수 있는 함수
  void _incrementCounter() {
    // 이 클래스에 있는 인스턴스변수값을 바꿔주는 함수
    setState(() {
      _counter++;
    });
  }

  void _decreaseCounter() {
    // 이 클래스에 있는 인스턴스변수값을 바꿔주는 함수
    setState(() {
      if (_counter == 0) {
        _counter = 0;
      } else {
        _counter--;
      }
    });
  }

  // state로 선언된 클래스는 state을
  // build를 통해서 외부(MyHomePage app)로 전달한다.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 카운터 화면에 출력
            const Text('You have pushed the button this many times: '),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Icon(Icons.star, color: Colors.red),
          ],
        ),
      ),
      // 플로팅 버튼 2개 만들어서 숫자 +- 기능 만들기
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            // 누르면 : 기능 동작
            onPressed: _decreaseCounter,
            // 버튼 꾹 눌렀을때 나오는 글자s
            tooltip: 'Decrease',
            child: const Icon(Icons.remove),
          ),
          //빈칸 클래스 넣어서 사이 띄워주기
          Padding(padding: EdgeInsets.all(4)),
          FloatingActionButton(
            // 누르면 : 기능 동작
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
