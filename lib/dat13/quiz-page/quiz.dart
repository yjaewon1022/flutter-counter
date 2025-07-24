import 'package:counter/dat13/quiz-page/day.dart';
import 'package:counter/dat13/quiz-page/time.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final _title = 'Flutter 예제';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: '호텔 예약앱', home: Hotel());
  }
}

class Hotel extends StatefulWidget {
  @override
  State<Hotel> createState() => HotelState();
}

class HotelState extends State<Hotel> {
  Map data = {
    "day": null,
    "time": null,
    "room": null,
    "name": null,
    "userAgreed": false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('호텔예약')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),

        child: Center(
          child: Column(
            children: [
              Text('호텔 예약하기', style: TextStyle(fontSize: 16)),
              Text('아래의 버튼을 눌러서 호텔을 예약해보세요.'),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DayPage(data: data),
                    ),
                  );
                },
                child: Text("날짜 선택하기"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
