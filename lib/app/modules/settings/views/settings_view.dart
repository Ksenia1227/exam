import 'package:exam/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Настройки'),
          centerTitle: true,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.toNamed(Routes.GAME);
          },
          child: Text('НАЧАТЬ',
              style: TextStyle(
                  fontSize: 12, color: Color.fromARGB(255, 3, 37, 66))),
        ),
        backgroundColor: Color.fromARGB(255, 164, 180, 232),
        body: Center(
          child: Column(
            children: [
              // SizedBox(height: 20),
              // const Text('Время в секундах:',
              //     style: TextStyle(
              //       fontSize: 18,
              //     )),
              // SizedBox(height: 30),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     ElevatedButton(onPressed: () {}, child: Text("30")),
              //     SizedBox(width: 20),
              //     ElevatedButton(onPressed: () {}, child: Text("60")),
              //     SizedBox(width: 20),
              //     ElevatedButton(onPressed: () {}, child: Text("90"))
              //   ],
              // ),
              SizedBox(height: 30),
              const Text(
                'Количество слов для достижения победы:',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Container(child: 
                  ElevatedButton(onPressed: () {controller.selectWords(0);}, child: Text("30"))),
                  SizedBox(width: 20),
                  ElevatedButton(onPressed: () {controller.selectWords(1);}, child: Text("60")),
                  SizedBox(width: 20),
                  ElevatedButton(onPressed: () {controller.selectWords(2);}, child: Text("100"))
                ],
              )
            ],
          ),
        ));
  }
}
