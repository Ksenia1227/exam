import 'package:exam/app/routes/app_pages.dart';
import 'package:exam/app/services/users_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstpageController extends GetxController {
  //TODO: Implement FirstpageController
final firstteamController= TextEditingController();
 final secondteamController= TextEditingController();

 void next(){
  String name1=firstteamController.text;
  String name2=secondteamController.text;
  UsersService.to.addTeamtoList(name1, name2);
  Get.toNamed(Routes.SETTINGS);
 }
}
