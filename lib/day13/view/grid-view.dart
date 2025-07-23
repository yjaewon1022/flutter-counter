import 'package:flutter/material.dart';

// 격자 형태로 위젯을 배치할 때 사용합니다.
class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView 연습")),
      body: GridView.count(
        // crossAxisCount = 한 격자 줄에 몇 개를 표기할 것인가?
        crossAxisCount: 2,
        children: [
          Container(
            color: Colors.red,
            child: Center(child: Text("1")),
          ),
          // Container(
          //   color: Colors.red,
          //   child: Center(
          //     child: ConstrainedBox(
          //       constraints: BoxConstraints.expand(),
          //       child: TextButton(
          //         onPressed: () {},
          //         style: TextButton.styleFrom(
          //           shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.all(Radius.circular(0)),
          //           ),
          //         ),
          //         child: Text("버튼1", style: TextStyle(color: Colors.black)),
          //       ),
          //     ),
          //   ),
          // ),
          Container(
            color: Colors.blue,
            child: Center(child: Text("2")),
          ),
          Container(
            color: Colors.green,
            child: Center(child: Text("3")),
          ),
          Container(
            color: Colors.yellow,
            child: Center(child: Text("4")),
          ),
          Container(child: Center(child: Text("5"))),
          Container(
            color: Colors.green,
            child: Center(child: Text("6")),
          ),
          Container(
            color: Colors.lime,
            child: Center(child: Text("7")),
          ),
          Container(
            color: Colors.red,
            child: Center(child: Text("8")),
          ),
        ],
      ),
    );
  }
}
