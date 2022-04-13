import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
abstract class CounterCubitState extends Equatable {
  final String action;
  final int count;

  const CounterCubitState({this.action, this.count});

  @override
  List<Object> get props => [action, count];
}

class CounterCubitInitial extends CounterCubitState {
  const CounterCubitInitial({String action, int count})
      : super(action: action, count: count);
}

class CounterCubitIncrease extends CounterCubitState {
  const CounterCubitIncrease({String action, int count})
      : super(action: action, count: count);
}

class CounterCubitDecrease extends CounterCubitState {
  const CounterCubitDecrease({String action, int count})
      : super(action: action, count: count);
}
