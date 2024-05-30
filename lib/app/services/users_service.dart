import 'package:get/get.dart';

class UsersService extends GetxService {
  static UsersService get to => Get.find();
  Future<UsersService> init() async {
    return this;
  }

  final List nameTeam = [];
  void addTeamtoList(String team1, String team2) {
    nameTeam.add(team1);
  }
}
