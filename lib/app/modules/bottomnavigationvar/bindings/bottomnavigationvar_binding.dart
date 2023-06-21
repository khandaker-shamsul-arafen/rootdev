import 'package:get/get.dart';

import '../../home/bindings/home_binding.dart';
import '../../testpage/bindings/testpage_binding.dart';
import '../../testpage2/bindings/testpage2_binding.dart';
import '../controllers/bottomnavigationvar_controller.dart';

class BottomnavigationvarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomnavigationvarController>(
      () => BottomnavigationvarController(),
    );
    HomeBinding().dependencies();
    TestpageBinding().dependencies();
    Testpage2Binding().dependencies();
  }
}
