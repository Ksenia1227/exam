import 'dart:math';

import 'package:exam/app/services/data_service.dart';
import 'package:exam/app/services/users_service.dart';
import 'package:get/get.dart';

class GameController extends GetxController {
  //TODO: Implement GameController
  RxString word = ''.obs;
  List get words => DataService.to.words;
  List get teams => UsersService.to.nameTeam;

  void randomword() {
    Random random = Random();
    int number = random.nextInt(words.length);
    word.value = words[number];
    words.removeAt(number);
  }

  

  @override
  void onInit() {
    randomword();
    super.onInit();
  }
}
