import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_with_http_project/provider/todo_provider.dart';
import 'package:provider_with_http_project/screen/detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Provider.of<TodoProvider>(context, listen: false).getAllTodos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Consumer<TodoProvider>(
          builder: (context, provider, child) {
            if (provider.isLoading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return ListView.builder(
                itemCount: provider.todos.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(provider.todos[index].title),
                    subtitle: Text(provider.todos[index].completed.toString()),
                    onTap: () {
                      // Do something
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TodoDetailPage(
                                    id: provider.todos[index].id,
                                  )));
                    },
                  );
                },
              );
            }
          },
        ));
  }
}
