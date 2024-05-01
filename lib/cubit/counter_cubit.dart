import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit{
  CounterCubit() : super(0);

  void increment(){
    emit(state +1);
  }
}