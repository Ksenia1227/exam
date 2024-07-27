import 'dart:async';
import 'dart:math';
import 'package:exam/app/modules/score/controllers/score_controller.dart';
import 'package:exam/app/routes/app_pages.dart';
import 'package:exam/app/services/data_service.dart';
import 'package:exam/app/services/users_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class GameController extends GetxController {
  //TODO: Implement GameController
  final scorecontroller = Get.put(ScoreController());
  RxString word = ''.obs;
  List oldWords = [];
  List<String> correctWords = [];
  List uncorrectWords = [];
  List get words => [...DataService.to.words];
  int score = 0;
  int scoreTeam = 0;
  List get teams => UsersService.to.nameTeam;
  RxInt numberTeam = 0.obs;
  var gameStarted = false.obs;

  void startGame() {
    gameStarted.value = true;
    numberTeam.value=UsersService.to.numberTeam;
  }

  var remainingTime = 10.obs;
  Timer? timer;

  void startTimer() {
    remainingTime.value = UsersService.to.time;
    timer?.cancel();
    timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      if (remainingTime.value > 0) {
        remainingTime.value--;
      } else {
        timer.cancel();
        navigateToPage();
      }
    });
  }

  void navigateToPage() async {
    UsersService.to.addwords(correctWords);
    print('user ${UsersService.to.numberTeam}');
    if (numberTeam.value < teams.length - 1) {
      int numberTeam1 = numberTeam.value;
      numberTeam.value += 1;
      scorecontroller.addwords();
      UsersService.to.numberTeam=numberTeam.value;
      Get.offAndToNamed(Routes.SCORE, arguments: {
        'ScoreTeams': scoreTeam,
        'indexTeam': numberTeam1,
      });
    } else if (numberTeam.value == teams.length - 1) {
      int numberTeam1 = numberTeam.value;
      numberTeam.value = 0;
      scorecontroller.addwords();
      UsersService.to.numberTeam=numberTeam.value;
      Get.offAndToNamed(Routes.SCORE, arguments: {
        'ScoreTeams': scoreTeam,
        'indexTeam': numberTeam1,
      });
    }
  }

  @override
  void onClose() {
    timer?.cancel();
    super.onClose();
  }

  void randomword() {
    Random random = Random();
    int number = random.nextInt(words.length);
    word.value = words[number];
    oldWords.add(words[number]);
    if (words.length > 0) {
      words.removeAt(number);
    } else {
      words == DataService.to.words;
    }
  }

  // void scoreTeams() {
  //   if (score == 0) {
  //     scoreTeam += 1;
  //     nextWord();
  //   } else if (score == 1) {
  //     // scoreTeam2;
  //     nextWord();
  //   }
  // }
  void scorerightTeams() {
    scoreTeam += 1;
    correctWords.add(word.value);
    nextWord();
  }

  void scoreleftTeams() {
    correctWords.add(word.value);
    nextWord();
  }

  void nextWord() {
    randomword();
  }
  // void nextTeam(){
  //   UsersService.to.plusScore(score);
  // }

  @override
  void onInit() {
    randomword();
    super.onInit();
  }
}
