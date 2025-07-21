import 'package:flutter/material.dart';

void main() {
  runApp(ColorSelect());
}

class ColorSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(width: 100, height: 100, color: Colors.red),
              Container(width: 100, height: 100, color: Colors.orange),
              Container(width: 100, height: 100, color: Colors.yellow),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(width: 100, height: 100, color: Colors.green),
              Container(width: 100, height: 100, color: Colors.blue),
              Container(width: 100, height: 100, color: Colors.indigo),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(width: 100, height: 100, color: Colors.purple),
              Container(width: 100, height: 100, color: Colors.blueGrey),
              Container(width: 100, height: 100, color: Colors.black),
            ],
          ),
        ],
      ),
    );
  }
}
