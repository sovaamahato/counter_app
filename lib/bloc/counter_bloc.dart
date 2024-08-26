import 'package:flutter_bloc/flutter_bloc.dart';

//event
////createdf a parent class for events and then all other events will indside it (child class will exetnds this parent class)
sealed class CounterEvent {}

class CounterIncremented extends CounterEvent {}

class CounterDecremented extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncremented>((event, emit) {
      emit(state + 1);
    });
    on<CounterDecremented>((event, emit) {
      emit(state - 1);
    });
  }
}
