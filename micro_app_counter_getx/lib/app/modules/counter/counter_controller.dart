import 'package:get/get.dart';

class CounterController extends GetxController {
  final number = 0.obs;

  void increment() => number.value++;

  void decrement() => number.value--;
}
