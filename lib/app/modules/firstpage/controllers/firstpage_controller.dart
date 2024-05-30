import 'package:exam/app/routes/app_pages.dart';
import 'package:exam/app/services/users_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstpageController extends GetxController {
  //TODO: Implement FirstpageController
  final firstteamController = TextEditingController();
 final secondteamController= TextEditingController();
  // RxList<String> names = <String>[].obs;

  void next() {
    String name1 = firstteamController.text;
    UsersService.to.addTeamtoList(name1);
    Get.toNamed(Routes.GAME);
  }
}
