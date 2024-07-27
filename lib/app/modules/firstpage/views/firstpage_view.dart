import 'package:exam/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/firstpage_controller.dart';

class FirstpageView extends GetView<FirstpageController> {
  const FirstpageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Команды',  style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),),
        centerTitle: true,
      ),
      backgroundColor: Color.fromARGB(255, 164, 180, 232),
      body:  SingleChildScrollView(
                child:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const Text(
            //   'Alias',
            //   style: TextStyle(
            //     color: Color.fromARGB(255, 3, 37, 66),
            //     fontSize: 55,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            SizedBox(height: 40),
            // Text(
            //   "Команды",
            //   style: TextStyle(
            //     fontSize: 26,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 500,
              height: 75,
              child: Column(
                children: [
                  TextField(
                    controller: controller.firstteamController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      labelText: 'Name Team',
                    ),
                  ),
                 
                  // TextField(
                  //   controller: controller.secondteamController,
                  //   decoration: const InputDecoration(
                  //     border: OutlineInputBorder(
                  //       borderSide: BorderSide(color: Colors.black),
                  //     ),
                  //     labelText: 'Team 2',
                  //   ),
                  // )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                controller.next();
              },
              child: Text(
                'Добавить команду',
                style: TextStyle(
                  color: Color.fromARGB(255, 3, 37, 66),
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
             const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                if (controller.teams.length<2) {
            } else {
                Get.toNamed(Routes.SETTINGS);
              }},
              child: Text(
                'Новая игра',
                style: TextStyle(
                  color: Color.fromARGB(255, 3, 37, 66),
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
             const SizedBox(
              height: 30,
            ),
            Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  Obx(() => ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: controller.teams.length,
                        itemBuilder: (context, index) {
                          return Card(
                              color: Color.fromARGB(255, 10, 120, 174),
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 7, horizontal: 150),
                              child: ListTile(
                                title: Text(controller.teams[index], style: const TextStyle(
                                          color: Colors.black, fontSize: 15)),
                              ));
                        },
                      )),
                      SizedBox(height: 20,)
          ])
          ],
        ),
      ),
    ));
  }
}
