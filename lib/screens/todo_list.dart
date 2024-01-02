import 'package:flutter/material.dart';
import 'package:todo_app_with_api/screens/add_page.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Todo App'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.grey[700],
        onPressed: navigateToAddPage,
        label: const Text('Add Todo'),
      ),
    );
  }

  void navigateToAddPage() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const AddPage(),
      ),
    );
  }
}
