import 'package:flutter/material.dart';

class InputWidgets extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController passwordController;

  const InputWidgets({
    super.key,
    required this.usernameController,
    required this.passwordController,
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
              labelText: "Username",
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
              labelText: "Password",
            ),
          ),
        ),
      ],
    );
  }
}
