import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_bloc_event.dart';
part 'counter_bloc_state.dart';

class CounterBlocBloc extends Bloc<CounterBlocEvent, CounterBlocState> {
  CounterBlocBloc() : super(CounterBlocState()) {
    on<IncrementEvent>((event, emit) {
      emit(state.copyWith(state.count++));
    });
    on<DecrementEvent>((event, emit) {
      emit(state.copyWith(state.count--));
    });
  }
}
