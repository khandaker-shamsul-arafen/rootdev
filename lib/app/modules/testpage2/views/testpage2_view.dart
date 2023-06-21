import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/testpage2_controller.dart';

class Testpage2View extends GetView<Testpage2Controller> {
  const Testpage2View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Testpage2View'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Testpage2View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
