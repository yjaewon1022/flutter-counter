import 'package:flutter/material.dart';

void main() {
  return runApp(dropDownWidget());
}

class dropDownWidget extends StatefulWidget {
  @override
  State<dropDownWidget> createState() => dropDownWdigetState();
}

class dropDownWdigetState extends State<dropDownWidget> {
  String? selected;

  @override
  Widget build(BuildContext context) {
    //스위치의 켜짐,꺼짐 상태를 뜻하는 인스턴스 변수

    return Scaffold(
      body: DropdownButton(
        items: [
          DropdownMenuItem(value: 'Apple', child: Text('Apple')),
          DropdownMenuItem(value: 'Banana', child: Text('Banana')),
          DropdownMenuItem(value: 'Mango', child: Text('Mango')),
        ],

        onChanged: (String? newvalue) {
          setState(() {
            selected = newvalue;
          });
        },
        hint: Text('힌트'),
      ),
    );
  }
}
