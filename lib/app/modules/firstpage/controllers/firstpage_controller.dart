import 'package:exam/app/models/teams.dart';
import 'package:exam/app/routes/app_pages.dart';
import 'package:exam/app/services/users_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstpageController extends GetxController {
  //TODO: Implement FirstpageController
  final firstteamController = TextEditingController();
  final secondteamController = TextEditingController();
  // RxList<String> names = <String>[].obs;
  // RxList teams= UsersService.to.nameTeam.obs;
  RxList<String> teams = <String>[].obs;

  void next() {
    String name = firstteamController.text;
    if (name.isNotEmpty) {
      UsersService.to.addTeamtoList(name);
      teams.add(name);
      firstteamController.clear();
    }
  }
}
