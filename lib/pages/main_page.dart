import 'package:flutter/material.dart';
import 'package:flutter_calculator_project_v2/controller/bottom_nav_controller.dart';
import 'package:flutter_calculator_project_v2/pages/calculator_pages.dart';
import 'package:flutter_calculator_project_v2/pages/football_pages.dart';
import 'package:flutter_calculator_project_v2/pages/profile_pages.dart';
import 'package:flutter_calculator_project_v2/widget/bottom_nav_widgets.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  final BottomNavController controller = Get.put(BottomNavController());
  MainPage({super.key});

  final List<Widget> pages = [
    CalculatorPages2(),
    FootballPages(),
    ProfilePages(),
  ];
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: pages[controller.currentIndex.value],
        bottomNavigationBar: BottomNavWidgets(),
      ),
    );
  }
}
