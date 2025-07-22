import 'package:flutter/material.dart';

void main() {
  return runApp(HelloWidget());
}

class HelloWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 32)),
          onPressed: () {
            showAlertDialog(context);
          },
          child: const Text('Hello, Press Here!'),
        ),
      ),
    );
  }
}

void showAlertDialog(BuildContext context) async {
  String result = await showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('AlertDialog Sample'),
        content: const Text('Select button you want'),
        actions: <Widget>[
          TextButton(
            child: Text("OK"),
            onPressed: () {
              Navigator.pop(context, "OK");
            },
          ),
          TextButton(
            child: Text("Cancel"),
            onPressed: () {
              Navigator.pop(context, "Cancel");
            },
          ),
        ],
      );
    },
  );

  print('showAlertDialog(): $result');
}
