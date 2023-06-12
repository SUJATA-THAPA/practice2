
import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/homepage.dart';

import 'package:flutter_application_1/views/list_provider.dart';

import 'package:provider/provider.dart';

void main() {
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AddListProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ToDo App',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: const HomePage(),
      ),
    );
  }
}
