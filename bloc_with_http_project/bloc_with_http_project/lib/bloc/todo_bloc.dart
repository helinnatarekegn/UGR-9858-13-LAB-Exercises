import 'package:bloc_with_http_project/bloc/todo_event.dart';
import 'package:bloc_with_http_project/bloc/todo_state.dart';
import 'package:bloc_with_http_project/repository/todo_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final TodoRepository todoRepository;

  TodoBloc({required this.todoRepository}) : super(TodoState());

  @override
  Stream<TodoState> mapEventToState(TodoEvent event) async* {
    if (event is FetchTodos) {
      yield TodosLoading();

      try {
        final todos = await todoRepository.fetchTodos();
        yield TodosLoaded(todos);
      } catch (e) {
        yield TodosError(e.toString());
      }
    }
  }
}
