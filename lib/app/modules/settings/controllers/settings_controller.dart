import 'package:get/get.dart';

class SettingsController extends GetxController {
  //TODO: Implement SettingsController
  final selectedIndex = 0.obs;

  void selectWords(int index) {
    selectedIndex.value = index;
  }

}
