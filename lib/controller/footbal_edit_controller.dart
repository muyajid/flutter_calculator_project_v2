import 'package:flutter/cupertino.dart';
import 'package:flutter_calculator_project_v2/controller/footbal_controller.dart';
import 'package:flutter_calculator_project_v2/model/player_model.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';

class FootbalEditController extends GetxController {
  final FootbalController footbalController = Get.find();

  final imgPlayerController = TextEditingController();
  final namePlayerController = TextEditingController();
  final posisiPlayerController = TextEditingController();
  final nomorPunggungController = TextEditingController();

  void loadPages(int index) {
    final listTile = footbalController.clubs[index];
    imgPlayerController.text = listTile.imgPlayer;
    namePlayerController.text = listTile.namaPlayer;
    posisiPlayerController.text = listTile.posisiPlayer;
    nomorPunggungController.text = listTile.nomorPunggung;
  }

  void editData(int index) {
    footbalController.clubs[index] = PlayerModel(
      imgPlayerController.text.toString(),
      namePlayerController.text.toString(),
      posisiPlayerController.text.toString(),
      nomorPunggungController.text.toString(),
    );

    Get.back();
  }
}
