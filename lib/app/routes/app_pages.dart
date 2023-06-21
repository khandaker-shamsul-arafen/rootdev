import 'package:get/get.dart';

import '../modules/bottomnavigationvar/bindings/bottomnavigationvar_binding.dart';
import '../modules/bottomnavigationvar/views/bottomnavigationvar_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.BOTTOMNAVIGATIONVAR;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOMNAVIGATIONVAR,
      page: () => const BottomnavigationvarView(),
      binding: BottomnavigationvarBinding(),
    ),
  ];
}
