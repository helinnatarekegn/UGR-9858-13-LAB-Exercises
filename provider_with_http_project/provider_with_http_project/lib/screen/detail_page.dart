import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_with_http_project/model/data_model.dart';
import 'package:provider_with_http_project/provider/todo_provider.dart';

class TodoDetailPage extends StatefulWidget {
  final int id;
  const TodoDetailPage({Key? key, required this.id}) : super(key: key);

  @override
  State<TodoDetailPage> createState() => _TodoDetailPageState();
}

class _TodoDetailPageState extends State<TodoDetailPage> {
  @override
  void initState() {
    super.initState();
    Provider.of<TodoProvider>(context, listen: false).getSingleTodo(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TodoProvider>(
      builder: (context, provider, _) {
        final todo = provider.todo;
        return Scaffold(
          appBar: AppBar(
            title: Text(todo.title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('ID: ${todo.id}'),
                Text('Title: ${todo.title}'),
                Text('Completed: ${todo.completed}'),
              ],
            ),
          ),
        );
      },
    );
  }
}
