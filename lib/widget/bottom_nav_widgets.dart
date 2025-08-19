import 'package:flutter/material.dart';
import 'package:flutter_calculator_project_v2/controller/bottom_nav_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class BottomNavWidgets extends StatelessWidget {
  final BottomNavController controller = Get.find();
  BottomNavWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        currentIndex: controller.currentIndex.value,
        onTap: controller.changePageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: "Calculator",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.sports), label: "Footbal"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
