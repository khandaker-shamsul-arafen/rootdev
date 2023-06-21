import 'package:get/get.dart';

import '../controllers/testpage2_controller.dart';

class Testpage2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Testpage2Controller>(
      () => Testpage2Controller(),
    );
  }
}
