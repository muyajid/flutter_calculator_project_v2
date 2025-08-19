import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class BottomNavController extends GetxController {
  var currentIndex = 0.obs;

  void changePageIndex(int index) {
    currentIndex.value = index;
  }
}
