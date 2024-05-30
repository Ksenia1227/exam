import 'dart:math';

import 'package:exam/app/services/users_service.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  //TODO: Implement SettingsController
  final selectedIndex = 0.obs;
// final List words=[];

  void selectWords(int index) {
    selectedIndex.value = index;
  }
}