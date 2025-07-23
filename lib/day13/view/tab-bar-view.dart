import 'package:flutter/material.dart';

// TabBarView = appBar 하단에 탭을 하나 만들어서 각 탭에서 표기되는 화면을 만들 때 사용
class TabBarViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBarView 연습"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.sunny)),
              Tab(icon: Icon(Icons.cloud)),
              Tab(icon: Icon(Icons.wind_power)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("SUNNY!")),
            Center(child: Text("CLOUDY!")),
            Center(child: Text("WINDY!")),
          ],
        ),
      ),
    );
  }
}
