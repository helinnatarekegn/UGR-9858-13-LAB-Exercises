import 'dart:convert';

import 'package:provider_with_http_project/model/data_model.dart';
import 'package:http/http.dart' as http;

class TodoServices {
  Future<List<Todo>> getAll() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    if (response.statusCode == 200) {
      List<Todo> todos = (json.decode(response.body) as List)
          .map((data) => Todo.fromJson(data))
          .toList();
      return todos;
    } else {
      return [];
    }
  }

  Future<Todo> getSingle(id) async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/$id'));
    if (response.statusCode == 200) {
      Todo todo = Todo.fromJson(json.decode(response.body));
      return todo;
    } else {
      return Todo.fromJson({});
    }
  }
}
