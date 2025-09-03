import 'package:flutter_calculator_project_v2/controller/calculator_controller.dart';
import 'package:flutter_calculator_project_v2/controller/footbal_controller.dart';
import 'package:flutter_calculator_project_v2/controller/footbal_edit_controller.dart';
import 'package:get/get.dart';

class CalculatorBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    // Hanya di panggil ketika dibutuhkna
    Get.lazyPut<CalculatorController>(() => CalculatorController());
    Get.lazyPut<FootbalController>(() => FootbalController());
    Get.lazyPut<FootbalEditController>(() => FootbalEditController());
    Get.lazyPut<FootbalEditController>(() => FootbalEditController());
  }
}
