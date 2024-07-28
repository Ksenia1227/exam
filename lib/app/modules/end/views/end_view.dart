import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/end_controller.dart';

class EndView extends GetView<EndController> {
  const EndView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final arg = Get.arguments;
    final sc = arg['arg1'];
    final team = arg['arg2'];
    return Scaffold(
        appBar: AppBar(
          title: const Text('Победа'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(children: [
            Text(
              'Победил ${team}',
              style: TextStyle(fontSize: 20),
            ),
            Text('Счёт: ${sc}'),
          ]),
        ));
  }
}
