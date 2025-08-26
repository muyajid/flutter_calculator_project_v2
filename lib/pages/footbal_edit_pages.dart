import 'package:flutter/material.dart';
import 'package:flutter_calculator_project_v2/controller/footbal_edit_controller.dart';
import 'package:get/get.dart';

class FootbalEdit extends StatelessWidget {
  FootbalEdit({super.key});

  final FootbalEditController editController = Get.put(FootbalEditController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Footbal Editing")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              height: 60,
              child: TextField(
                controller: editController.imgPlayerController,
                decoration: const InputDecoration(
                  labelText: 'imgPlayer',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: 300,
              height: 60,
              child: TextField(
                controller: editController.namePlayerController,
                decoration: const InputDecoration(
                  labelText: 'namaPlayer',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: 300,
              height: 60,
              child: TextField(
                controller: editController.posisiPlayerController,
                decoration: const InputDecoration(
                  labelText: 'posisiPlayer',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: 300,
              height: 60,
              child: TextField(
                controller: editController.nomorPunggungController,
                decoration: const InputDecoration(
                  labelText: 'nomorPunggung',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: 250,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {
                  editController.editData(); // ✅ cukup ini
                },
                child: const Text(
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
