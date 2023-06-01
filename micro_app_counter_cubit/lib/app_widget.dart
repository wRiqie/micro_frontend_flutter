import 'package:flutter/material.dart';
import 'package:micro_app_counter_cubit/app/routes/app_pages.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      routes: AppPages().values,
      initialRoute: Routes.counter,
    );
  }
}
