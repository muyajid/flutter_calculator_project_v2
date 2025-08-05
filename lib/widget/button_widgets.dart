import 'package:flutter/material.dart';

class ButtonWidgets extends StatelessWidget {
  final VoidCallback onPresedOne;
  final VoidCallback onPresedTwo;
  final String buttonOne;
  final String buttonTwo;

  const ButtonWidgets({
    super.key,
    required this.onPresedOne,
    required this.onPresedTwo,
    required this.buttonOne,
    required this.buttonTwo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 6.5),
          child: ElevatedButton(
            onPressed: onPresedOne,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.greenAccent,
              foregroundColor: const Color.fromARGB(255, 0, 0, 0),
              fixedSize: Size(300, 50),
            ),
            child: Text(
              buttonOne,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 6.5),
          child: ElevatedButton(
            onPressed: onPresedTwo,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 149, 239, 196),
              foregroundColor: Colors.black,
              fixedSize: Size(300, 50),
            ),
            child: Text(
              buttonTwo,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ],
    );
  }
}
