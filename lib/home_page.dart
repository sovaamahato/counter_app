import 'package:counter_app/bloc/counter_bloc.dart';
import 'package:counter_app/cubit/counter_cubit.dart';
import 'package:counter_app/inc_dec_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final counterCubit = BlocProvider.of<CounterCubit>(context);
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter app!',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: BlocBuilder<CounterBloc, int>(
                bloc: counterBloc,
                builder: (context, counter) {
                  return Text(
                    '$counter',
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  );
                }),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) {
                    return const IncDecPage();
                  }),
                );
              },
              child: const Text("Navigate")),
        ],
      ),
    );
  }
}
