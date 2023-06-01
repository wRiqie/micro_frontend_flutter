import 'package:get/get.dart';
import 'package:micro_app_counter_getx/app/modules/counter/counter_binding.dart';
import 'package:micro_app_counter_getx/app/modules/counter/counter_page.dart';
import 'package:micro_app_counter_getx/app/modules/help/help_binding.dart';
import 'package:micro_app_counter_getx/app/modules/help/help_page.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.counter,
      page: () => const CounterPage(),
      binding: CounterBinding(),
    ),
    GetPage(
      name: Routes.help,
      page: () => const HelpPage(),
      binding: HelpBinding(),
    ),
  ];
}
