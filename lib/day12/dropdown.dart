// 드랍다운
//

import 'package:flutter/material.dart';

void main() {
  runApp(DropDownWidget());
}

class DropDownWidget extends StatefulWidget {
  @override
  State<DropDownWidget> createState() => DropDownWidgetState();
}

class DropDownWidgetState extends State<DropDownWidget> {
  String? selected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: DropdownButton(
          value: selected,
          items: [
            DropdownMenuItem(value: 'apple', child: Text("apple")),
            DropdownMenuItem(value: 'b', child: Text("b")),
            DropdownMenuItem(value: 'c', child: Text("c")),
          ],
          onChanged: (String? newValue) {
            setState(() {
              selected = newValue;
            });
          },
          // hint 주기 ----------
          hint: Text("선택하기"),
        ),
      ),
    );
  }
}
