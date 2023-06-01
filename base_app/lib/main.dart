import 'package:base_app/app/screens/modules_screen.dart';
import 'package:flutter/material.dart';
import 'package:micro_app_counter_cubit/counter_cubit_resolver.dart';
import 'package:micro_app_counter_getx/counter_getx_resolver.dart';
import 'package:micro_core/app/base_app.dart';
import 'package:micro_core/app/micro_core_utils.dart';
import 'package:micro_core/app/micro_app.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget with BaseApp {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    super.registerRouters();

    return MaterialApp(
      title: 'Micro Frontends',
      theme: ThemeData.dark(),
      navigatorKey: navigatorKey,
      onGenerateRoute: super.generateRoute,
      initialRoute: '/modules',
      debugShowCheckedModeBanner: false,
    );
  }

  @override
  Map<String, WidgetBuilderArgs> get baseRoutes => {
    '/modules': (context, args) => const ModulesScreen()
  };

  @override
  List<MicroApp> get microApps => [
    CounterCubitResolver(),
    CounterGetxResolver(),
  ];
}
