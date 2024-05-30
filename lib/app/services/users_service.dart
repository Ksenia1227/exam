import 'package:get/get.dart';

class UsersService extends GetxService {
  static UsersService get to => Get.find();
  Future<UsersService> init() async {
    return this;
  }

  List nameTeam = [];
  void addTeamtoList(String team1) {
    nameTeam.add(team1);
  }
  

  // void savesettings(String word){
  //   words=word;
  // }
}
