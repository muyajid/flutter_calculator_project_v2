import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  final numberOne = TextEditingController();
  final numberTwo = TextEditingController();
  var hasil = ''.obs;

  void tambah() {
    int numberOneToInt = int.parse(numberOne.text.toString());
    int numberTwoTOInt = int.parse(numberTwo.text.toString());

    int r = numberOneToInt + numberTwoTOInt;
    hasil.value = r.toString();
  }

  void kurang() {
    int numberOneToInt = int.parse(numberOne.text.toString());
    int numberTwoToInt = int.parse(numberTwo.text.toString());

    int r = numberOneToInt - numberTwoToInt;
    hasil.value = r.toString();
  }

  void kali() {
    int numberOneToInt = int.parse(numberOne.text.toString());
    int numberTwoToInt = int.parse(numberTwo.text.toString());

    int r = numberOneToInt * numberTwoToInt;
    hasil.value = r.toString();
  }

  void bagi() {
    int numberOneToInt = int.parse(numberOne.text.toString());
    int numberTwoToInt = int.parse(numberTwo.text.toString());

    if (numberOneToInt == 0 || numberTwoToInt == 0) {
      hasil.value = "Tidak dapat membagi dengan 0";
      return;
    }

    int r = numberOneToInt ~/ numberTwoToInt;
    hasil.value = r.toString();
  }

  void clear() {
    numberOne.clear();
    numberTwo.clear();
    hasil.value = 0.toString();
  }
}
