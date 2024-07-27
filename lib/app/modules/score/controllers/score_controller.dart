import 'package:exam/app/models/teams.dart';
import 'package:exam/app/modules/game/controllers/game_controller.dart';
import 'package:exam/app/services/users_service.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class ScoreController extends GetxController {
  //TODO: Implement ScoreController
  //  late List<String> list=UsersService.to.words;
  var list = <String>[].obs;
  List get teams => UsersService.to.nameTeam;
  @override
  void onInit() {
    super.onInit();
  }

void addwords(){
  list.addAll(UsersService.to.words);
  print(list);
}
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}
