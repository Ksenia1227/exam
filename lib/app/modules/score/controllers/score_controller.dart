import 'package:exam/app/models/teams.dart';
import 'package:exam/app/models/words.dart';
import 'package:exam/app/modules/game/controllers/game_controller.dart';
import 'package:exam/app/services/users_service.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class ScoreController extends GetxController {
  //TODO: Implement ScoreController
  //  late List<String> list=UsersService.to.words;
  // RxList<Words> list = <Words>[].obs;
  List<Words> get list=> UsersService.to.words.obs;
  List get teams => UsersService.to.nameTeam;
  
  @override
  void onInit() {
    super.onInit();
  }
  void updateWord(int index) {
     final currentWord = list[index];
     print('текущее состояние $currentWord');
    final updatedWord = currentWord.copyWith(correct: !currentWord.correct);
   print('измененное состояние $updatedWord');
    list[index] = updatedWord;
    print('list состояние ${list[index]}');
    UsersService.to.words[index]=list[index];
    print('текущее состояние ${UsersService.to.words}');
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
