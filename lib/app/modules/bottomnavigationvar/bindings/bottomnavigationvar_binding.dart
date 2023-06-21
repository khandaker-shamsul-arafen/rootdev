import 'package:get/get.dart';

import '../../home/bindings/home_binding.dart';
import '../controllers/bottomnavigationvar_controller.dart';

class BottomnavigationvarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomnavigationvarController>(
      () => BottomnavigationvarController(),
    );
    HomeBinding().dependencies();
  }
}
