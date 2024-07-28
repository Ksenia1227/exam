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
    final arg = Get.arguments;
    final arg1 = arg['indexTeam'];
    // print(controller.list);
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 123, 123, 123),
        appBar: AppBar(
          title: Text('Результат команды ${controller.teams[arg1].nameTeam}'),
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
                controller.next(arg1);
              },
              child: Text('Далее', style: TextStyle(fontSize: 20)),
            ),
            Obx(() => ListView.builder(
                  itemCount: controller.list.length,
                  itemBuilder: (context, index) {
                    final word = controller.list[index];
                    return
                      Card(
                          color: Color.fromARGB(255, 218, 220, 220),
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          margin: const EdgeInsets.symmetric(
                              vertical: 7, horizontal: 200),
                          child: ListTile(
                            title: Text(word.word),
                            trailing: IconButton(
                              icon: Icon(
                                word.correct ? Icons.check : Icons.clear,
                                color: word.correct ? Colors.green : Colors.red,
                              ),
                              onPressed: () {
                                controller.updateWord(index);
                              },
                            ),
                          ),
                    );
                  },
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                )),
          ])),
        ));
  }
}
