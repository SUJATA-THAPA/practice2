import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/todo.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Sujata ToDo App')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ToDoAdd(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Column(children: [
        Container(
          padding: const EdgeInsets.only(top: 40, left: 150),
          child: const Text(
            "Add a todo",
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
          ),
        ),
      ]),
    );
  }
}
