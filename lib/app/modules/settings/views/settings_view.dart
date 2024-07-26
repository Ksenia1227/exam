import 'package:exam/app/routes/app_pages.dart';
import 'package:exam/app/services/users_service.dart';
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
              Obx(() => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 80,
                          width: 100,
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: controller.selectedIndex == 0
                                  ? const Color.fromARGB(255, 24, 127, 211)
                                  : Colors.transparent,
                              width: 2,
                            ),
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                controller.selectWords(0);
                              },
                              child: Text("30"))),
                      SizedBox(width: 20),
                      Container(
                          height: 80,
                          width: 100,
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: controller.selectedIndex == 1
                                  ? const Color.fromARGB(255, 24, 127, 211)
                                  : Colors.transparent,
                              width: 2,
                            ),
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                controller.selectWords(1);
                              },
                              child: Text("60"))),
                      SizedBox(width: 20),
                      Container(
                          height: 80,
                          width: 100,
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: controller.selectedIndex == 2
                                  ? const Color.fromARGB(255, 24, 127, 211)
                                  : Colors.transparent,
                              width: 2,
                            ),
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                controller.selectWords(2);
                              },
                              child: Text("100")))
                    ],
                  ))
            ],
          ),
        ));
  }
}
