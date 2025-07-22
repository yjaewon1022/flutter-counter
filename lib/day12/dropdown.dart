import 'package:flutter/material.dart';

void main() {
  return runApp(DropdownWidget());
}

class DropdownWidget extends StatefulWidget {
  @override
  State<DropdownWidget> createState() => DropdownWidgetState();
}

class DropdownWidgetState extends State<DropdownWidget> {
  String? selected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DropdownButton(
        value: selected,
        items: [
          DropdownMenuItem(value: 'Apple', child: Text('Apple')),
          DropdownMenuItem(value: 'Banana', child: Text('Banana')),
          DropdownMenuItem(value: 'Mango', child: Text('Mango')),
        ],
        onChanged: (String? newValue) {
          setState(() {
            selected = newValue;
          });
        },
        hint: Text("힌트"),
      ),
    );
  }
}
