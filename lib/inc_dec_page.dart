import 'package:counter_app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_bloc.dart';

class IncDecPage extends StatelessWidget {
  const IncDecPage({super.key});

  @override
  Widget build(BuildContext context) {
    //final counterCubit = BlocProvider.of<CounterCubit>(context);
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              onPressed: () {
                // counterCubit.increment()
                counterBloc.add(CounterIncremented());
              },
              child: const Text("Increase")),
          const SizedBox(
            height: 11,
          ),
          ElevatedButton(
              onPressed: () {
                //counterCubit.decrement()
                counterBloc.add(CounterDecremented());
              },
              child: const Text("decrese"))
        ]),
      ),
    );
  }
}
