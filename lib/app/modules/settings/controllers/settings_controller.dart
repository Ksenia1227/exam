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
    Get.toNamed(Routes.GAME, arguments: {'selectedTime': selectedTimeIndex.value,'selectedWords': selectedIndex.value });
  }
}