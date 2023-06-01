import 'package:micro_app_counter_getx/app/app_widget.dart';
import 'package:micro_core/app/micro_app.dart';
import 'package:micro_core/app/micro_core_utils.dart';

class CounterGetxResolver implements MicroApp {
  @override
  String get microAppName => 'micro_app_counter_getx';

  @override
  Map<String, WidgetBuilderArgs> get routes => {
    '/counter-getx':(context, args) => const AppWidget()
  };
}