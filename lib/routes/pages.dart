import 'package:flutter_calculator_project_v2/binding/calculator_binding.dart';
import 'package:flutter_calculator_project_v2/controller/footbal_controller.dart';
import 'package:flutter_calculator_project_v2/pages/calculator_pages.dart';
import 'package:flutter_calculator_project_v2/pages/footbal_edit_pages.dart';
import 'package:flutter_calculator_project_v2/pages/football_pages.dart';
import 'package:flutter_calculator_project_v2/pages/main_page.dart';
import 'package:flutter_calculator_project_v2/routes/routes.dart';
import 'package:get/route_manager.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.main,
      page: () => MainPage(),
      binding: CalculatorBinding(), // wrapper punya bottom nav
    ),
    GetPage(
      name: AppRoutes.calculator,
      page: () => CalculatorPages2(),
      binding: CalculatorBinding(),
    ),
    GetPage(
      name: AppRoutes.footballPlayers,
      page: () => FootballPages(),
      binding: CalculatorBinding(),
    ),
    GetPage(
      name: AppRoutes.footballEdit,
      page: () => FootbalEdit(),
      binding: CalculatorBinding(),
    ),
  ];
}
