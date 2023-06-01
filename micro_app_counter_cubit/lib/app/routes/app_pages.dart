import 'package:flutter/material.dart';
import 'package:micro_app_counter_cubit/app/screens/counter/counter.dart';
import 'package:micro_app_counter_cubit/app/screens/help/help.dart';

class Routes {
  static const counter = '/counter';
  static const help = '/help';
}

class AppPages {
  Map<String, Widget Function(BuildContext context)> values = {
    Routes.counter: (context) => const Counter(),
    Routes.help: (context) => const Help(),
  };
}
