import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_calculator_project_v2/controller/footbal_edit_controller.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

class FootbalEdit extends StatelessWidget {
  FootbalEdit({super.key});
  final FootbalEditController editController = Get.put(FootbalEditController());

  @override
  Widget build(BuildContext context) {
    final int index = Get.arguments;
    editController.loadPages(index);

    return Scaffold(
      appBar: AppBar(title: Text("Footbal Editing")),
      body: Container(
        alignment: Center().alignment,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              height: 60,
              child: TextField(
                controller: editController.imgPlayerController,
                decoration: InputDecoration(
                  labelText: 'imgPlayer',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              width: 300,
              height: 60,
              child: TextField(
                controller: editController.namePlayerController,
                decoration: InputDecoration(
                  labelText: 'namaPlayer',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              width: 300,
              height: 60,
              child: TextField(
                controller: editController.posisiPlayerController,
                decoration: InputDecoration(
                  labelText: 'posisiPlayer',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              width: 300,
              height: 60,
              child: TextField(
                controller: editController.nomorPunggungController,
                decoration: InputDecoration(
                  labelText: 'nomorPunggung',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              width: 250,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Warna biru
                ),
                onPressed: () {
                  editController.editData(index);
                },
                child: Text(
                  'Save',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
