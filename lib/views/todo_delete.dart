import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'list_provider.dart';

class ToDoDelete extends StatefulWidget {
  const ToDoDelete({Key? key}) : super(key: key);

  @override
  State<ToDoDelete> createState() => _ToDoDeleteState();
}

class _ToDoDeleteState extends State<ToDoDelete> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AddListProvider>(
      builder: (context, modelvalue, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Title'),
          actions: [
            IconButton(
              onPressed: () {
              modelvalue.todos.removeWhere((element) => false);
              },
              icon: const Icon(Icons.delete_forever),
              color: Colors.greenAccent,
            ),
          ],
        ),
        body: Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 5)),
              ...List.generate(
                
               modelvalue.todos.length,
                (index) => ListTile(
                  onTap: (){
                    modelvalue.todos.remove;
                  },
                  title: Text(
                     modelvalue.todos[index].title,
                    style: const TextStyle(
                      
                        fontSize: 18,
                        color: Colors.purple,
                        fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    
                     modelvalue.todos[index].description,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            // Add child widgets inside the Row
           
                // Child widgets go here
              ],
            ),
          
        ),
      
    );
  }
}
