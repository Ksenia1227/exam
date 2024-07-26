import 'package:exam/app/modules/firstpage/views/firstpage_view.dart';
import 'package:exam/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/elias_controller.dart';

class EliasView extends GetView<EliasController> {
  const EliasView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 140, 191, 234),
      // appBar: AppBar(
      //   title: const Text('EliasView'),
      //   centerTitle: true,
      // ),
      floatingActionButton: 
      FloatingActionButton.large(
        child: Text('Далее', style: TextStyle(fontSize: 30),),
        shape: RoundedRectangleBorder(),
        onPressed: () {
          Get.offAndToNamed(Routes.FIRSTPAGE);
        },
      ),
      body: Center(
        child: Text(
          'ALIAS',
          style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
