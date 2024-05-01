
part of 'counter_bloc.dart';


sealed class CounterEvent {}

class CounterIncrementedEvent extends CounterEvent {}

class CounterDecrementEvent extends CounterEvent {}

