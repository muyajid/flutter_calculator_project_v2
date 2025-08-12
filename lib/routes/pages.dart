import 'package:flutter_calculator_project_v2/pages/calculator_pages.dart';
import 'package:flutter_calculator_project_v2/pages/footbal_edit_pages.dart';
import 'package:flutter_calculator_project_v2/pages/football_pages.dart';
import 'package:flutter_calculator_project_v2/routes/routes.dart';
import 'package:get/route_manager.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.calculator, page: () => CalculatorPages2()),
    GetPage(name: AppRoutes.footballPlayers, page: () => FootballPages()),
    GetPage(name: AppRoutes.footballEdit, page: () => FootbalEdit()),
  ];
}
