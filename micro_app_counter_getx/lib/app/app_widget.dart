import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:micro_app_counter_getx/app/routes/app_pages.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      getPages: AppPages.pages,
      initialRoute: Routes.counter,
    );
  }
}