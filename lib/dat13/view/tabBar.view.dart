import 'package:flutter/material.dart';

//TabBarView = appBar 하단에 탭을 만들어서 각 탭에서 표기되는 화면을 만들 때 사용

class TabBarViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBarView 연습'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.sunny)),
              Tab(icon: Icon(Icons.cloud)),
              Tab(icon: Icon(Icons.wind_power)),
            ],
          ),
        ),
        body: TabBarView(children: []),
      ),
    );
  }
}
