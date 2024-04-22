// create an event to fetch the todos from the repository using services and emit the todos to the UI layer.
import 'package:equatable/equatable.dart';

class TodoEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchTodos extends TodoEvent {
  @override
  List<Object> get props => [];
}

// Path: lib/bloc/todo_state.dart