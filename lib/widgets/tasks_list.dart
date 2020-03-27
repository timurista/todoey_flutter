import 'package:flutter/material.dart';
import 'package:todoeyflutter/models/tasks.dart';
import 'tasks_tile.dart';

class TasksList extends StatelessWidget {
  TasksList({this.items});

  final List<Task> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        print(index);
        return TasksTile(
          item: items[index],
        );
      },
      itemCount: this.items.length,
    );
  }
}
