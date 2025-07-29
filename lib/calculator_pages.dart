import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_calculator_project_v2/input_widgets.dart';

class CalculatorPages extends StatefulWidget {
  const CalculatorPages({super.key});

  @override
  State<CalculatorPages> createState() => _CalculatorPagesState();
}

class _CalculatorPagesState extends State<CalculatorPages> {
  final TextEditingController _numberOneController = TextEditingController();
  final TextEditingController _numberTwoController = TextEditingController();
  double hasil = 0;

  void calculate(String ops) {
    double numberOne = double.parse(_numberOneController.text.trim());
    double numberTwo = double.parse(_numberTwoController.text.trim());

    if (_numberOneController.text.isEmpty ||
        _numberTwoController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "Tidak ada angka yang bisa dihitung",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.yellowAccent,
        ),
      );
      return;
    }
    switch (ops) {
      case "+":
        setState(() {
          hasil = numberOne + numberTwo;
        });
        break;
      case "-":
        setState(() {
          hasil = numberOne - numberTwo;
        });
        break;
      case "X":
        setState(() {
          hasil = numberOne * numberTwo;
        });
        break;
      case ":":
        setState(() {
          if (numberOne == 0 || numberTwo == 0) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  "Tidak Dapat Membagi Dengan Angka Nol",
                  style: TextStyle(color: Colors.black),
                ),
                backgroundColor: Colors.yellowAccent,
              ),
            );

            return;
          }
          hasil = numberOne / numberTwo;
        });
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator Pages"),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Container(
        alignment: Center().alignment,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              child: InputWidgets(
                usernameController: _numberOneController,
                passwordController: _numberTwoController,
                inputNumberOne: "Number One",
                inputNumberTwo: "Number Two",
                secure: false,
                inputFormater: [FilteringTextInputFormatter.digitsOnly],
              ),
            ),
            Container(
              margin: EdgeInsets.all(25),
              child: Text(
                'Hasil = $hasil',
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              child: Row(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => calculate("+"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      fixedSize: Size(100, 100),
                    ),
                    child: Text(
                      "+",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => calculate("X"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      fixedSize: Size(100, 100),
                    ),
                    child: Text(
                      "X",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              child: Row(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => calculate("-"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      fixedSize: Size(100, 100),
                    ),
                    child: Text(
                      "-",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => calculate(":"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      fixedSize: Size(100, 100),
                    ),
                    child: Text(
                      ":",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              child: ElevatedButton(
                onPressed: () => {
                  setState(() {
                    hasil = 0.0;
                  }),
                  _numberOneController.clear(),
                  _numberTwoController.clear(),
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  fixedSize: Size(200, 25),
                ),
                child: Text(
                  "Clear",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
