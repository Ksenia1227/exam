import 'package:exam/app/models/teams.dart';
import 'package:exam/app/models/words.dart';
import 'package:exam/app/modules/game/controllers/game_controller.dart';
import 'package:exam/app/routes/app_pages.dart';
import 'package:exam/app/services/users_service.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class ScoreController extends GetxController {
  //TODO: Implement ScoreController
  //  late List<String> list=UsersService.to.words;
  // RxList<Words> list = <Words>[].obs;
  List<Words> list = (UsersService.to.words).obs;

  List teams = UsersService.to.nameTeam;
  int score = 0;
  int oldscore = 0;

  @override
  void onInit() {
    super.onInit();
    print('обновляется');
  }

  void upDate() {
    list = UsersService.to.words;
  }

  void updateWord(int index) {
    final currentWord = list[index];
    final updatedWord = currentWord.copyWith(correct: !currentWord.correct);
    list[index] = updatedWord;
    UsersService.to.words = List.of(list);
  }

  void next(dynamic index) {
    UsersService.to.words.clear();
    for (var i in list) {
      if (i.correct) {
        score += 1;
      }
    }
    oldscore = UsersService.to.nameTeam[index].score;
    int sc = oldscore + score;
    final updatedScore = UsersService.to.nameTeam[index].copyWith(score: sc);
    UsersService.to.nameTeam[index] = updatedScore;
    if (sc >= UsersService.to.numberWords) {
      Get.offAndToNamed(Routes.END, arguments: {
        'arg1': sc,
        'arg2': UsersService.to.nameTeam[index].nameTeam
      });
    } else {
      // list.clear();
      Get.offAndToNamed(Routes.GAME);
    }
  }

  // void addwords() {
  //    list.assignAll(UsersService.to.words);
  //   print(list);
  // }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
