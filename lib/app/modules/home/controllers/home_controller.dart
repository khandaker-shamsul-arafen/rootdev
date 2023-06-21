import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/remote_impl/api_helper_impl.dart';
import '../../../data/response_model/Fixture.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final GlobalKey<ScaffoldState> key = GlobalKey();

  final count = 0.obs;
  final Rx<Fixture?> fixtureDetails = Fixture().obs;

  getAllFixture() async {
    fixtureDetails.value = await APIHelper().fixture();
  }

  @override
  void onInit() async {
    await getAllFixture();
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
