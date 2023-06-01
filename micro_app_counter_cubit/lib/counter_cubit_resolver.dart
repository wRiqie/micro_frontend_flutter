import 'package:micro_app_counter_cubit/app_widget.dart';
import 'package:micro_core/app/micro_app.dart';
import 'package:micro_core/app/micro_core_utils.dart';

class CounterCubitResolver implements MicroApp {
  @override
  String get microAppName => 'micro_app_counter_cubit';

  @override
  Map<String, WidgetBuilderArgs> get routes => {
        '/counter-cubit': (context, args) => const AppWidget(),
      };
}
