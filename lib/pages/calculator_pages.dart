import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_calculator_project_v2/controller/calculator_controller.dart';
import 'package:flutter_calculator_project_v2/routes/routes.dart';
import 'package:flutter_calculator_project_v2/widget/button_calulate_widgets.dart';
import 'package:flutter_calculator_project_v2/widget/input_widgets.dart';
import 'package:get/get.dart';

class CalculatorPages2 extends StatelessWidget {
  CalculatorPages2({super.key});
  final CalculatorController controller = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InputWidgets(
            usernameController: controller.numberOne,
            passwordController: controller.numberTwo,
            inputNumberOne: "Number One",
            inputNumberTwo: "Number Two",
            secure: false,
            inputFormater: [FilteringTextInputFormatter.digitsOnly],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              ButtonCalulate(ops: "+", onPresed: () => controller.tambah()),
              ButtonCalulate(ops: "-", onPresed: () => controller.kurang()),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              ButtonCalulate(ops: "X", onPresed: () => controller.kali()),
              ButtonCalulate(ops: ":", onPresed: () => controller.bagi()),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(20),
            child: Obx(
              () => Text(
                "Hasil = ${controller.hasil}",
                style: const TextStyle(color: Colors.green, fontSize: 20),
              ),
            ),
          ),
          ButtonCalulate(
            ops: "C",
            onPresed: () => Get.offAllNamed(AppRoutes.footballPlayers),
          ),
          ButtonCalulate(
            ops: "M",
            onPresed: () => Get.toNamed(AppRoutes.footballPlayers),
          ),
        ],
      ),
    );
  }
}
