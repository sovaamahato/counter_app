import 'package:counter_app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncDecPage extends StatelessWidget {
  const IncDecPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              onPressed: () => counterCubit.increment(),
              child: const Text("Increase")),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () => counterCubit.decrement(),
              child: const Text("decrese"))
        ]),
      ),
    );
  }
}
