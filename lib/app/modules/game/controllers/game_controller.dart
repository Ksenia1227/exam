import 'dart:math';

import 'package:exam/app/services/data_service.dart';
import 'package:exam/app/services/users_service.dart';
import 'package:get/get.dart';

class GameController extends GetxController {
  //TODO: Implement GameController
  RxString word = ''.obs;
  List oldWords=[];
  List get words => [...DataService.to.words];
  int score = 0;
  int scoreTeam1 = 0;
  int scoreTeam2 = 0;
  List get teams => UsersService.to.nameTeam;

  void randomword() {
    Random random = Random();
    int number = random.nextInt(words.length);
    word.value = words[number];
    oldWords.add(words[number]);
    if(words.length>0){
      words.removeAt(number);
    }else{
      words == DataService.to.words;
    }
    
  }

  void scoreTeams() {
    if (score == 0) {
      scoreTeam1 += 1;
      print(scoreTeam1);
      nextWord();
    } else if (score == 1) {
      scoreTeam2;
      nextWord();
    }
  }

void nextWord(){
  randomword();
}
  void nextTeam(){
    UsersService.to.plusScore(score);
  }

  @override
  void onInit() {
    randomword();
    super.onInit();
  }
}
