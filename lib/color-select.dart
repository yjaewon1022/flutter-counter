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
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: TextButton(
                  onPressed: () {
                    showAlertDialog(context, "RED");
                  },
                  child: Text("빨강"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.orange,
                child: TextButton(
                  onPressed: () {
                    showAlertDialog(context, "ORANGE");
                  },
                  child: Text("주황"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
                child: TextButton(
                  onPressed: () {
                    showAlertDialog(context, "YELLOW");
                  },
                  child: Text("노랑"),
                ),
              ),
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

void showAlertDialog(BuildContext context, String color) async {
  String result = await showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Color"),
        content: Text(color),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context, "닫기");
            },
            child: Text("닫기"),
          ),
        ],
      );
    },
  );
}
