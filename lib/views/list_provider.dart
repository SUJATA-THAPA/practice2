import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/views/classtodo.dart';



class AddListProvider extends ChangeNotifier{

final bool _isloading=false;
bool get isloading =>_isloading;



final List<Todo> _todos =[];

List<Todo> get todos =>_todos;
 

void additem(Todo list) {
   _todos.add(list );
    notifyListeners();
  }

void remove(Todo list) {
   _todos.remove(list  );
    notifyListeners();
  }



}