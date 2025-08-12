import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_calculator_project_v2/controller/footbal_controller.dart';
import 'package:flutter_calculator_project_v2/routes/routes.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';

class FootballPages extends StatelessWidget {
  FootballPages({super.key});
  final FootbalController footbalController = Get.put(FootbalController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello worlds")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            itemCount: footbalController.clubs.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.asset(
                  footbalController.clubs[index].imgPlayer,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                title: Text(footbalController.clubs[index].namaPlayer),
                subtitle: Text(footbalController.clubs[index].posisiPlayer),
                trailing: Text(footbalController.clubs[index].nomorPunggung),
                onTap: () =>
                    Get.toNamed(AppRoutes.footballEdit, arguments: index),
              );
            },
          ),
        ),
      ),
    );
  }
}
