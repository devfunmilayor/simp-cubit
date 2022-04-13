import 'package:bloc_pattern/ui/cubit/counterCubit/counterState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterCubitState> {
  CounterCubit(initialState)
      : super(const CounterCubitInitial(action: 'initializing Data', count: 0));

  void increment() =>
      emit(CounterCubitIncrease(action: 'Increment', count: state.count + 1));

  void decrement() =>
      emit(CounterCubitDecrease(action: 'Decrement', count: state.count - 1));
}
