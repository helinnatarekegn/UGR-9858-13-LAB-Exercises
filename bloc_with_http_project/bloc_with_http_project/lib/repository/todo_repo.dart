import 'package:bloc_with_http_project/model/data_model.dart';
import 'package:bloc_with_http_project/services/todo_services.dart';

class TodoRepository {
  final TodoServices _todoService;

  TodoRepository(this._todoService);

  Future<List<Todo>> fetchTodos() async {
    // TODO: Implement fetching todos from the service
    return await _todoService.getAll();
    // and mapping them to TodoModel objects
  }

  Future<Todo> fetchSingle(int id) async {
    return await _todoService.getSingle(id);
  }
}
