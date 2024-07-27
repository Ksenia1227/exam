import 'package:exam/app/services/users_service.dart';
import 'package:get/get.dart';
import 'package:exam/app/routes/app_pages.dart';

class SettingsController extends GetxController {
  //TODO: Implement SettingsController
  final selectedIndex = 10.obs;
  final selectedTimeIndex = 30.obs;
// final List words=[];

  void selectWords(int index) {
    selectedIndex.value = index;
  }

   void selectTimes(int index) {
    selectedTimeIndex.value = index;
  }
  void next(){
    UsersService.to.numberWords=selectedIndex.value;
    UsersService.to.time=selectedTimeIndex.value;
    Get.toNamed(Routes.GAME);
  }
}