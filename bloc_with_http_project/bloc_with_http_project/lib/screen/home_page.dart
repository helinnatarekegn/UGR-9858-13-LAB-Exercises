import 'package:bloc_with_http_project/bloc/todo_bloc.dart';
import 'package:bloc_with_http_project/bloc/todo_event.dart';
import 'package:bloc_with_http_project/bloc/todo_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// use bloc to fetch the todos from the repository and emit the todos to the UI layer.

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<TodoBloc>(context).add(FetchTodos());
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'),
      ),
      body: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) {
          if (state is TodosLoaded) {
            return ListView.builder(
              itemCount: state.todos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(state.todos[index].title),
                  subtitle: Text(state.todos[index].completed.toString()),
                );
              },
            );
          } else if (state is TodosError) {
            return Center(
              child: Text(state.error),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
