import 'package:flutter/material.dart';
import 'package:flutter_calculator_project_v2/widget/button_widgets.dart';
import 'package:flutter_calculator_project_v2/calculator_pages1.dart';
import 'package:flutter_calculator_project_v2/widget/input_widgets.dart';
import 'package:flutter_calculator_project_v2/register_pages.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({super.key});

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void auth() {
    String username = _usernameController.text.trim();
    String password = _passwordController.text.trim();

    if (username.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Username Dan Password Dibutuhkan"),
          backgroundColor: Colors.yellowAccent,
          duration: Duration(seconds: 1),
        ),
      );
      return;
    }
    if (username == "admin" && password == "admin123") {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Berhasil Login"),
          backgroundColor: Colors.greenAccent,
          duration: Duration(seconds: 1),
        ),
      );

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CalculatorPages()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Gagal Login"),
          backgroundColor: Colors.redAccent,
          duration: Duration(seconds: 1),
        ),
      );
    }
  }

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
                  fontSize: 30,
                ),
              ),
            ),

            InputWidgets(
              usernameController: _usernameController,
              passwordController: _passwordController,
              inputNumberOne: "Username",
              inputNumberTwo: "Password",
              secure: true,
            ),

            Container(
              margin: EdgeInsets.only(top: 35),
              child: ButtonWidgets(
                onPresedOne: () => auth(),
                onPresedTwo: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPages()),
                  ),
                },
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
