import 'package:get/get.dart';

import '../controllers/elias_controller.dart';

class EliasBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EliasController>(
      () => EliasController(),
    );
  }
}
