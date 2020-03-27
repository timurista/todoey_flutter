import 'package:flutter/material.dart';
import 'screens/task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/tasks.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String data = "Foobar";

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: TasksScreen(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}
