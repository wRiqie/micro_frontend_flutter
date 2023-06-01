import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:micro_app_counter_cubit/app/cubits/counter_cubit.dart';
import 'package:micro_app_counter_cubit/app/routes/app_pages.dart';
import 'package:micro_core/app/micro_core_utils.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador Cubit'),
        actions: [
          IconButton(
            onPressed: () {
              navigatorKey.currentState?.pushReplacementNamed('/modules');
            },
            icon: const Icon(Icons.door_back_door),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.help);
            },
            icon: const Icon(Icons.help),
          ),
        ],
      ),
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: BlocProvider.of<CounterCubit>(context).decrement,
              icon: const Icon(
                Icons.remove,
                size: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: BlocBuilder<CounterCubit, int>(
                builder: (context, state) {
                  return Text(
                    state.toString(),
                    style: const TextStyle(fontSize: 24),
                  );
                },
              ),
            ),
            IconButton(
              onPressed: BlocProvider.of<CounterCubit>(context).increment,
              icon: const Icon(
                Icons.add,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
