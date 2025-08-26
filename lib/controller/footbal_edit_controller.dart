import 'package:flutter/cupertino.dart';
import 'package:flutter_calculator_project_v2/controller/footbal_controller.dart';
import 'package:flutter_calculator_project_v2/model/player_model.dart';
import 'package:get/get.dart';

class FootbalEditController extends GetxController {
  final FootbalController footbalController = Get.find();

  final imgPlayerController = TextEditingController();
  final namePlayerController = TextEditingController();
  final posisiPlayerController = TextEditingController();
  final nomorPunggungController = TextEditingController();

  late int index;

  @override
  void onInit() {
    super.onInit();
    index = Get.arguments as int;

    print("Selected index: $index");
    print("Data sebelum edit: ${footbalController.clubs[index]}");

    loadPages(index);
  }

  void loadPages(int index) {
    final player = footbalController.clubs[index];
    imgPlayerController.text = player.imgPlayer;
    namePlayerController.text = player.namaPlayer;
    posisiPlayerController.text = player.posisiPlayer;
    nomorPunggungController.text = player.nomorPunggung;
  }

  void editData() {
    footbalController.clubs[index] = PlayerModel(
      imgPlayerController.text,
      namePlayerController.text,
      posisiPlayerController.text,
      nomorPunggungController.text,
    );

    print("Data setelah edit: ${footbalController.clubs[index]}");

    Get.back();
  }
}
