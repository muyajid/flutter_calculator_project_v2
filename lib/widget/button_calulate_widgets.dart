import 'package:flutter/material.dart';

class ButtonCalulate extends StatelessWidget {
  final String? ops;
  final VoidCallback? onPresed;
  const ButtonCalulate({super.key, this.ops, this.onPresed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPresed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.greenAccent,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        fixedSize: Size(100, 100),
      ),
      child: Text(
        ops.toString(),
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
      ),
    );
  }
}
