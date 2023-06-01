import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:micro_app_counter_getx/app/routes/app_pages.dart';
import 'package:micro_core/app/micro_core_utils.dart';

import 'counter_controller.dart';

class CounterPage extends GetView<CounterController> {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
        actions: [
          IconButton(
            onPressed: () {
              navigatorKey.currentState?.pushReplacementNamed('/modules');
            },
            icon: const Icon(Icons.door_back_door),
          ),
          IconButton(
            onPressed: () {
              Get.toNamed(Routes.help);
            },
            icon: const Icon(Icons.help),
          ),
        ],
      ),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: controller.decrement,
              icon: const Icon(
                Icons.remove,
                size: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Obx(
                () => Text(
                  controller.number.value.toString(),
                  style: const TextStyle(fontSize: 24),
                ),
              ),
            ),
            IconButton(
              onPressed: controller.increment,
              icon: const Icon(
                Icons.add,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
