import 'package:exam/app/models/teams.dart';
import 'package:get/get.dart';

class UsersService extends GetxService {
  static UsersService get to => Get.find();
  Future<UsersService> init() async {
    return this;
  }

  int scoreTeam1 = 0;
  List<Teams> nameTeam = [];
  List<String> words = [];
  int numberWords=0;
  int time=0;
  int numberTeam=0;

  void addTeamtoList(String team) {
    Teams newTeam = Teams(nameTeam: team, score: 0, moreScore: 0);
    nameTeam.add(newTeam);
    print(nameTeam);
  }

  void addwords(List<String> allwords) {
    words = allwords;
  }

  void plusScore(int score) {}
  // void savesettings(String word){
  //   words=word;
  // }
}
