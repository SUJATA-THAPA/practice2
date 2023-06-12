import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'classtodo.dart';
import 'displaytodo.dart';
import 'list_provider.dart';

class ToDoAdd extends StatefulWidget {
  const ToDoAdd({Key? key}) : super(key: key);

  @override
  State<ToDoAdd> createState() => _ToDoAddState();
}

class _ToDoAddState extends State<ToDoAdd> {
  TextEditingController texttitle = TextEditingController();
  TextEditingController textdescription = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(height: 45, width: double.infinity),
            const Text(
              'Add ToDo',
              style: TextStyle(fontSize: 30, color: Colors.purple),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                  controller: texttitle,
                  maxLines: 2,
                  decoration: const InputDecoration(
                    hintText: "Enter the title",
                    border: OutlineInputBorder(),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: textdescription,
                maxLines: 6,
                decoration: const InputDecoration(
                  hintText: "Enter the description",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(130, 50),
                ),
                onPressed: () {
                  Todo item = Todo(
                      description: textdescription.text, title: texttitle.text);
                  context.read<AddListProvider>().additem(item);

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ToDoDisplay()));
                },
                child: const Text(
                  'ADD',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
