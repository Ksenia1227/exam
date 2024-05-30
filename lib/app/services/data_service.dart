import 'package:get/get.dart';

class DataService extends GetxService {
  static DataService get to => Get.find();
  Future<DataService> init() async {
    return this;
  }

  List<String> words = [
    'Кот',
    'Собака',
    'Фильм',
    'Балерина',
    'Стул',
    'Стол',
    'Книга',
    'Компьютер',
    'Чашка',
    'Ложка',
    'Вилка',
    'Тарелка',
    'Окно',
    'Дверь',
    'Мыло',
    'Бумага',
  ];
}
