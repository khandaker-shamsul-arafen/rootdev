import 'package:get/get.dart';

import '../modules/bottomnavigationvar/bindings/bottomnavigationvar_binding.dart';
import '../modules/bottomnavigationvar/views/bottomnavigationvar_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/testpage/bindings/testpage_binding.dart';
import '../modules/testpage/views/testpage_view.dart';
import '../modules/testpage2/bindings/testpage2_binding.dart';
import '../modules/testpage2/views/testpage2_view.dart';

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
    GetPage(
      name: _Paths.TESTPAGE,
      page: () => const TestpageView(),
      binding: TestpageBinding(),
    ),
    GetPage(
      name: _Paths.TESTPAGE2,
      page: () => const Testpage2View(),
      binding: Testpage2Binding(),
    ),
  ];
}
