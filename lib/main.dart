import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

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
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// StatefulWidget은 별다른 기능 없이 사용자가 값을 계속 변경할 수 있게 하는
// State 를 생성하는 기능만 가지고 있다.
class MyHomePage extends StatefulWidget {
  // MyHomePage 클래스의 생성자
  const MyHomePage({super.key, required this.title});

  // 인스턴스 변수
  final String title;

  // 사용자가 앱 사용 중 계속해서 값을 변경할 수 있는 State를 생성할 수 있게 해주는 함수
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// State<MyHomePage> : MyHomePage 라는 클래스의 State 입니다. 라는 것을 명시해주는 것
class _MyHomePageState extends State<MyHomePage> {
  // 인스턴스 변수 (사용자가 앱에서 실제로 변경할 수 있는 값)
  int _counter = 0;

  // _incrementCounter() : State 클래스 내에서 사용할 수 있는 기능(함수)
  void _incrementCounter() {
    // setState : 이 클래스에서 가지고 있는 인스턴스 변수의 값을 바꿀 때 사용하는 기능(함수)
    setState(() {
      _counter++;
    });
  }

  // upperCamelCase 가 무엇인가?
  // 항상 식별자의 첫번째 문자는 대문자로 표기 해야 하며, 만약 여러단어가 포함되어 있는 경우라면, 각 단어를 구분짓게 해주기 위해서 마찬가지로 대문자로 표기해야 한다.
  // 사용방법 : (숫자 더하기 라는 기능을 하는 함수 이름을 짓고싶다.) add + number
  // upperCamelCase 사용 시 : AddNumber
  // lowerCamelCase : addNumber

  // 빼기를 할 수 있는 기능
  void decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  // State 로 선언된 클래스는 현재 내가 가지고 있는 값을 어떻게 반환할건지
  // build() 기능을 통해서 외부(StatefulWidget인 MyHomePage)로 전달해주어야 함.
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
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      // 이 부분을 수정해서 왼쪽 버튼을 누르면 -, 오른쪽 버튼을 누르면 + 하는 기능 추가
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: decrementCounter,
            tooltip: 'Decrement',
            child: const Text("-"),
          ),
          // 빈 칸을 뜻하는 클래스를 하나 추가할 수도 있음 : Padding
          Padding(padding: EdgeInsets.all(10)),
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
