import 'dart:async';
import 'dart:math';
import 'package:exam/app/routes/app_pages.dart';
import 'package:exam/app/services/data_service.dart';
import 'package:exam/app/services/users_service.dart';
import 'package:get/get.dart';

class GameController extends GetxController {
  //TODO: Implement GameController
  RxString word = ''.obs;
  List oldWords = [];
  List correctWords = [];
  List uncorrectWords = [];
  List get words => [...DataService.to.words];
  int score = 0;
  int scoreTeam = 0;
  List get teams => UsersService.to.nameTeam;
  int numberTeam = 0;
  var gameStarted = false.obs;

  void startGame() {
    gameStarted.value = true;
  }

  var remainingTime = 10.obs; // Оставшееся время в секундах
  Timer? timer;

  void startTimer() {
    remainingTime.value =
        arguments['selectedTime']; 
    timer?.cancel(); // Отменяем предыдущий таймер, если он есть
    timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      if (remainingTime.value > 0) {
        remainingTime.value--;
      } else {
        timer.cancel();
        navigateToPage(); // Переход на другую страницу по окончании
      }
    });
  }

  final arguments = Get.arguments;
  void navigateToPage() {
    if (numberTeam < teams.length - 1) {
      print(numberTeam);
      print(teams.length);
      numberTeam += 1;      

      // Get.offAndToNamed(Routes.SCORE, arguments: {
      //   'listCorrectWords': correctWords,
      //   'listUncorrectWords': uncorrectWords,
      //   'ScoreTeams': scoreTeam,
      //   'indexTeam':numberTeam,
      //   'score':scoreTeam
      // });
    }
    if (numberTeam == teams.length - 1) {
      numberTeam = 0;
      Get.offAndToNamed(Routes.SCORE, arguments: {
        'listCorrectWords': correctWords,
        'listUncorrectWords': uncorrectWords,
        'indexTeam':numberTeam,
        'score':scoreTeam
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
  //     print(scoreTeam);
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
    uncorrectWords.add(word.value);
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
