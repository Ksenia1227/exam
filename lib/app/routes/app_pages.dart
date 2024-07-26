import 'package:get/get.dart';

import '../modules/elias/bindings/elias_binding.dart';
import '../modules/elias/views/elias_view.dart';
import '../modules/firstpage/bindings/firstpage_binding.dart';
import '../modules/firstpage/views/firstpage_view.dart';
import '../modules/game/bindings/game_binding.dart';
import '../modules/game/views/game_view.dart';
import '../modules/score/bindings/score_binding.dart';
import '../modules/score/views/score_view.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/views/settings_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ELIAS;

  static final routes = [
    GetPage(
      name: _Paths.FIRSTPAGE,
      page: () => const FirstpageView(),
      binding: FirstpageBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.GAME,
      page: () => const GameView(),
      binding: GameBinding(),
    ),
    GetPage(
      name: _Paths.ELIAS,
      page: () => const EliasView(),
      binding: EliasBinding(),
    ),
    GetPage(
      name: _Paths.SCORE,
      page: () => const ScoreView(),
      binding: ScoreBinding(),
    ),
  ];
}
