import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/score_controller.dart';

class ScoreView extends GetView<ScoreController> {
  const ScoreView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('ScoreView'),
        centerTitle: true,
      ),
      body:  Center(
          child: Column(children: [
        Text(
          'Слова:',
          style: TextStyle(fontSize: 30),
        ),
        ElevatedButton(
      onPressed: () {
      },
      child: Text('ckjdf', style: TextStyle(fontSize: 20)),
        ),
        // Text(arguments['listCorrectWords'], style: TextStyle(color: Colors.blue, fontSize: 25),),
         //Text(controller.uncorrectWords[controller.indexTeam].nameTeam, style: TextStyle(color: Colors.red, fontSize: 25),),
      ])),
    );
  }
}
