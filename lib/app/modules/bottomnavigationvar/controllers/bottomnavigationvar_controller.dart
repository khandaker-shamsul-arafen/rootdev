import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home/controllers/home_controller.dart';
import '../../home/views/home_view.dart';
import '../../testpage/views/testpage_view.dart';
import '../../testpage2/views/testpage2_view.dart';

class BottomnavigationvarController extends GetxController
    with GetSingleTickerProviderStateMixin {
  //TODO: Implement BottomnavigationvarController
  RxInt currentIndex = 0.obs;
  late TabController? tapController;
  final homeController = Get.find<HomeController>();

  var tabs = [
    const HomeView(),
    const TestpageView(),
    const Testpage2View(),
    const HomeView(),
    const HomeView(),
  ];
  final count = 0.obs;
  @override
  void onInit() {
    tapController = TabController(
      initialIndex: 0,
      length: 5,
      vsync: this,
    );
    print("${Get.height}");
    print("${Get.width}");
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
