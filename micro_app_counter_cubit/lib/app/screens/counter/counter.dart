import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/counter_cubit.dart';
import 'counter_screen.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
        create: (context) => CounterCubit(),
        child: const CounterScreen(),
      );
  }
}