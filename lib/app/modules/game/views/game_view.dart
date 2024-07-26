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
      body: Center(
          child: Column(
        children: [
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
                  controller.scoreTeams();
                  controller.nextTeam();
                },
                child: Text('+'),
              ),
              SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {controller.nextWord();},
                child: Text('-'),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Следующая команда'),
          ),
          Text(''),
        ],
      )),
    );
  }
}
