import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/todo_delete.dart';
import 'package:provider/provider.dart';

import 'list_provider.dart';

class ToDoDisplay extends StatefulWidget {
  const ToDoDisplay({Key? key}) : super(key: key);

  @override
  State<ToDoDisplay> createState() => _ToDoDisplayState();
}

class _ToDoDisplayState extends State<ToDoDisplay> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AddListProvider>(
      builder: (context, value, child) => Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 5)),
              ...List.generate(
                value.todos.length,
                (index) => ListTile(
                  title: Text(
                    value.todos[index].title,
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.purple,
                        fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    value.todos[index].description,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(130, 50),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ToDoDelete()));
                },
                child: const Text("Next"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
