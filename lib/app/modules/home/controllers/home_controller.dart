import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/remote_impl/api_helper_impl.dart';
import '../../../data/remote_impl/da.dart';
import '../../../data/response_model/Fixture.dart';
import '../../../data/response_model/c.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final GlobalKey<ScaffoldState> key = GlobalKey();

  final count = 0.obs;
 final Rx<Fixture?> productList = Fixture().obs;

  getAllFixture() async {
    productList.value = await APIHelper().fixture();
    //print(fixtureToJson(productList.value!));
     print(productList.value!.data?[0]?.league?.imagePath);
  }
  @override
  void onInit() async{
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
