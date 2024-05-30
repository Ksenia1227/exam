import 'package:exam/app/routes/app_pages.dart';
import 'package:exam/app/services/data_service.dart';
import 'package:exam/app/services/users_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main()async {
await initService();
  runApp(
    GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppPages .INITIAL,
        getPages: AppPages.routes,
    )
  );
}
Future<void> initService()async{
await Get.putAsync(() => UsersService().init());
await Get.putAsync(() => DataService().init());
}