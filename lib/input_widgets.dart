import 'package:flutter/material.dart';

class InputWidgets extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final String inputNumberOne;
  final String inputNumberTwo;

  const InputWidgets({
    super.key,
    required this.usernameController,
    required this.passwordController,
    required this.inputNumberOne,
    required this.inputNumberTwo,
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
