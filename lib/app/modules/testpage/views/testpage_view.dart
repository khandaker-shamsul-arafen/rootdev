import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/testpage_controller.dart';

class TestpageView extends GetView<TestpageController> {
  const TestpageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TestpageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TestpageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
