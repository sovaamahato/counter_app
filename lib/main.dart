import 'package:counter_app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const Counter());
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  final counterCubit = CounterCubit();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Counter app!',
            style: TextStyle(),
          ),
          backgroundColor: Colors.purple,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: BlocBuilder(
                  bloc: counterCubit,
                  builder: (context, counter) {
                    return Text(
                      '$counter',
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    );
                  }),
            ),
            ElevatedButton(
                onPressed: () => counterCubit.increment(),
                child: const Text("Increase")),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () => counterCubit.decrement(),
                child: const Text("decrese"))
          ],
        ),
      ),
    );
    ;
  }
}
