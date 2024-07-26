import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/game_controller.dart';

class GameView extends GetView<GameController> {
  const GameView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Игра'),
        centerTitle: true,
      ),
      body: Center(child:
      Column(
         mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() {
            if (controller.gameStarted.value) {
              return gameWidget();
            } else {
              return StartButton(controller: controller);
            }
          }),
        ],
      ),
      // Center(
      //     child: Column(
      //   children: [
      //     Obx(() =>
      //         Text(controller.word.value, style: TextStyle(fontSize: 40))),
      //     SizedBox(
      //       height: 30,
      //     ),
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         ElevatedButton(
      //           onPressed: () {
      //             controller.scorerightTeams();
      //           },
      //           child: Text('+'),
      //         ),
      //         SizedBox(width: 20),
      //         ElevatedButton(
      //           onPressed: () {controller.scoreleftTeams();},
      //           child: Text('-'),
      //         ),
      //       ],
      //     ),
      //     SizedBox(
      //       height: 20,
      //     ),
      //     ElevatedButton(
      //       onPressed: () {},
      //       child: Text('Следующая команда'),
      //     ),
      //     Text(''),
      //   ],
      // )),
    ));
  }
   gameWidget(){
    return  Center(
           child: Column(
        children: [
          Text('Команда: ${controller.teams[controller.numberTeam].nameTeam}'),
          Obx(()=> Text(
              'Оставшееся время: ${controller.remainingTime.value} секунд',
              style: TextStyle(fontSize: 24),
            )),

          Obx(() =>
              Text(controller.word.value, style: TextStyle(fontSize: 40))),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  controller.scorerightTeams();
                },
                child: Text('+'),
               ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {controller.scoreleftTeams();},
                child: Text('-'),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          // ElevatedButton(
          //   onPressed: () {},
          //   child: Text('Следующая команда'),
          // ),
          // Text(''),
        ],
      ));}
}
class StartButton extends StatelessWidget {
  final GameController controller;

  StartButton({required this.controller});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        controller.startGame();
         controller.startTimer();
      },
      child: Text('Начать игру', style: TextStyle(fontSize: 80)),
    );
  }
}
