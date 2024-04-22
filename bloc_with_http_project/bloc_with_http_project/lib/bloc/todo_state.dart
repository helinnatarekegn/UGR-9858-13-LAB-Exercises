// create a state to handle the todos fetched from the repository.
import 'package:bloc_with_http_project/model/data_model.dart';
import 'package:equatable/equatable.dart';

class TodoState extends Equatable {
  @override
  List<Object> get props => [];
}

class TodosLoaded extends TodoState {
  final List<Todo> todos;

  TodosLoaded(this.todos);

  @override
  List<Object> get props => [todos];
}

class TodosError extends TodoState {
  final String error;

  TodosError(this.error);
}

class TodosLoading extends TodoState {
  @override
  List<Object> get props => [];
}
