import 'package:flutter/material.dart';

void main() {
  return runApp(DropdownButtonWidget());
}

class DropdownButtonWidget extends StatefulWidget {
  @override
  State<DropdownButtonWidget> createState() => DropdownButtonWidgetState();
}

class DropdownButtonWidgetState extends State<DropdownButtonWidget> {
  String? selected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DropdownButton(
        value: selected,
        items: [
          DropdownMenuItem(value: 'Apple', child: Text('Apple')),
          DropdownMenuItem(value: 'Banana', child: Text('Banana')),
          DropdownMenuItem(value: 'cherry', child: Text('Cherry')),
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
