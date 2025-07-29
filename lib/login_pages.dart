import 'package:flutter/material.dart';
import 'package:flutter_calculator_project_v2/button_widgets.dart';
import 'package:flutter_calculator_project_v2/input_widgets.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({super.key});

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              alignment: Center().alignment,
              margin: EdgeInsets.only(top: 50),
              child: Image.asset("asset/image.png", width: 150),
            ),
            Container(
              margin: EdgeInsets.only(top: 35, bottom: 35),
              child: Text(
                "Login Pages",
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),

            InputWidgets(
              usernameController: _usernameController,
              passwordController: _passwordController,
            ),

            Container(
              margin: EdgeInsets.only(top: 35),
              child: ButtonWidgets(
                onPresedOne: () => {print("hello")},
                onPresedTwo: () => {print("Hello")},
                buttonOne: "Login",
                buttonTwo: "Signup",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
