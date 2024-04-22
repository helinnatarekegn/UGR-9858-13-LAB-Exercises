part of 'counter_bloc_bloc.dart';

class CounterBlocState {
  int count;
  String job = 'eyob';
  CounterBlocState({this.count = 0});

  CounterBlocState copyWith(int i, {int? count}) {
    return CounterBlocState(count: count ?? this.count);
  }
}
