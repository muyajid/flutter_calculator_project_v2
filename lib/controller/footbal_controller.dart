import 'package:flutter_calculator_project_v2/model/player_model.dart';
import 'package:get/get.dart';

class FootbalController extends GetxController {
  var clubs = [
    PlayerModel("asset/image.png", "John Doe", "Jaga Gawang", "2"),
    PlayerModel("asset/image.png", "Daus", "Jaga Gawang", "1"),
    PlayerModel("asset/image.png", "Hotman", "Jaga Gawang", "3"),
  ].obs;
}
