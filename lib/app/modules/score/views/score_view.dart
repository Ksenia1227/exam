import 'package:exam/app/modules/game/controllers/game_controller.dart';
import 'package:exam/app/modules/score/controllers/score_controller.dart';
import 'package:exam/app/routes/app_pages.dart';
import 'package:exam/app/services/users_service.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ScoreView extends GetView<ScoreController> {
  const ScoreView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
     final arg=Get.arguments;
  final arg1=arg['indexTeam'];
    return Scaffold(
        appBar: AppBar(
          title:  Text('Результат команды ${controller.teams[arg1].nameTeam}'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Column(children: [
            Text(
              'Слова:',
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {
                 UsersService.to.words.clear();
                Get.toNamed(Routes.GAME);
              },
              child: Text('Далее', style: TextStyle(fontSize: 20)),
            ),
            Obx(() => ListView.builder(
                  itemCount: controller.list.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(controller.list[index]),
                    );
                  },
                  shrinkWrap:
                      true, 
                  physics:
                      NeverScrollableScrollPhysics(), 
                ))
          ])),
        ));
  }
}
