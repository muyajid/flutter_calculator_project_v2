import 'package:flutter/material.dart';
import 'package:flutter_calculator_project_v2/widget/button_widgets.dart';
import 'package:flutter_calculator_project_v2/widget/input_widgets.dart';
import 'package:flutter_calculator_project_v2/login_pages.dart';
import 'package:intl/intl.dart';

class RegisterPages extends StatefulWidget {
  const RegisterPages({super.key});

  @override
  State<RegisterPages> createState() => _RegisterPagesState();
}

class _RegisterPagesState extends State<RegisterPages> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  String? gender;
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 35, bottom: 35),
              child: Text(
                "Register Pages",
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 12),
              width: 300,
              height: 50,
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Nama",
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
              margin: EdgeInsets.only(top: 14),
              width: 300,
              height: 60,
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: "Pilih Gender",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                ),
                value: gender,
                items: [
                  DropdownMenuItem(
                    value: "Laki-Laki",
                    child: Text("Laki-Laki"),
                  ),
                  DropdownMenuItem(
                    value: "Perempuan",
                    child: Text("Perempuan"),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    gender = value;
                  });
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 12),
              width: 300,
              height: 50,
              child: TextField(
                controller: _dateController,
                readOnly: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Tanggal Lahir",
                ),
                onTap: () async {
                  final DateTime? picked = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1700),
                    lastDate: DateTime(2500),
                  );

                  if (picked != null) {
                    String format = DateFormat('d MM yyyy').format(picked);
                    _dateController.text = format;
                  } else {
                    _dateController.text = "Tanggal Lahir";
                  }
                },
              ),
            ),
            ButtonWidgets(
              onPresedOne: () => {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Berhasil Register"),
                    backgroundColor: Colors.greenAccent,
                  ),
                ),
              },
              onPresedTwo: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPages()),
                ),
              },
              buttonOne: "Register",
              buttonTwo: "Login",
            ),
          ],
        ),
      ),
    );
  }
}
