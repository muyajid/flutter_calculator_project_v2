import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputWidgets extends StatelessWidget {
  final TextEditingController? usernameController;
  final TextEditingController? passwordController;
  final String inputNumberOne;
  final String inputNumberTwo;
  final bool secure;
  final List<TextInputFormatter>? inputFormater;

  const InputWidgets({
    super.key,
    this.usernameController,
    this.passwordController,
    required this.inputNumberOne,
    required this.inputNumberTwo,
    required this.secure,
    this.inputFormater,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 6.5),
          width: 300,
          height: 50,
          child: TextField(
            controller: usernameController,
            inputFormatters: inputFormater,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: inputNumberOne,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 6.5),
          width: 300,
          height: 50,
          child: TextField(
            controller: passwordController,
            obscureText: secure,
            inputFormatters: inputFormater,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: inputNumberTwo,
            ),
          ),
        ),
      ],
    );
  }
}
