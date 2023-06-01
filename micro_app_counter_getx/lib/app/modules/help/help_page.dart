import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'help_controller.dart';

class HelpPage extends GetView<HelpController> {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saiba mais'),
      ),
      body: Center(
        child: Text(controller.message),
      ),
    );
  }
}
