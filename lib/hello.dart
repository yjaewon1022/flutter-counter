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
<<<<<<< HEAD
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            textStyle: const TextStyle(fontSize: 32),
          ),
=======
          style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 32)),
>>>>>>> 5ad9fdb84176d6c4238a466b8e3e3b21ffcaafa1
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
<<<<<<< HEAD
        content: const Text("Select button you want"),
        actions: <Widget>[
          TextButton(
            child: const Text('OK'),
=======
        content: const Text('Select button you want'),
        actions: <Widget>[
          TextButton(
            child: Text("OK"),
>>>>>>> 5ad9fdb84176d6c4238a466b8e3e3b21ffcaafa1
            onPressed: () {
              Navigator.pop(context, "OK");
            },
          ),
          TextButton(
<<<<<<< HEAD
            child: const Text('Cancel'),
=======
            child: Text("Cancel"),
>>>>>>> 5ad9fdb84176d6c4238a466b8e3e3b21ffcaafa1
            onPressed: () {
              Navigator.pop(context, "Cancel");
            },
          ),
        ],
      );
    },
  );
<<<<<<< HEAD
=======

  print('showAlertDialog(): $result');
>>>>>>> 5ad9fdb84176d6c4238a466b8e3e3b21ffcaafa1
}
