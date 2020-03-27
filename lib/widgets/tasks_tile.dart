import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/tasks.dart';
import 'package:provider/provider.dart';

class TasksTile extends StatelessWidget {
  TasksTile({@required this.task, this.onToggle});

  final onToggle;
  final task;

  @override
  Widget build(BuildContext context) {
    final isChecked = task.status == StatusEum.DONE;
    return ListTile(
      title: Text(
        task.name,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        onChanged: onToggle,
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
      ),
    );
  }
}
