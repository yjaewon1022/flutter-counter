import 'package:flutter/material.dart';

void main() {
<<<<<<< HEAD
  return runApp(NumberTextFieldWidget());
}

class NumberTextFieldWidget extends StatefulWidget {
  @override
  State<NumberTextFieldWidget> createState() => NumberTextFieldState();
}

class NumberTextFieldState extends State<NumberTextFieldWidget> {
  late String _text = '0';

=======
  return runApp(PasswordTextFieldWidget());
}

class PasswordTextFieldWidget extends StatefulWidget {
  @override
  State<PasswordTextFieldWidget> createState() => PasswordTextFieldState();
}

class PasswordTextFieldState extends State<PasswordTextFieldWidget> {
  late String _text = "0";
>>>>>>> 5ad9fdb84176d6c4238a466b8e3e3b21ffcaafa1
  void changeText(String value) {
    setState(() {
      _text = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
<<<<<<< HEAD
        child: ListView(children: [ ],
=======
        child: ListView(
          children: [
            TextField(
              onChanged: (value) {
                changeText(value);
              },
            ),
          ],
>>>>>>> 5ad9fdb84176d6c4238a466b8e3e3b21ffcaafa1
        ),
      ),
    );
  }
}
