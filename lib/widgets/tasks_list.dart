import 'package:flutter/material.dart';
import 'package:todoeyflutter/models/tasks.dart';
import 'tasks_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            print(index);
            return TasksTile(
              task: taskData.tasks[index],
              onToggle: (val) {
                taskData.updateTask(index, val);
              },
            );
          },
          itemCount: taskData.taskSize,
        );
      },
    );
  }
}
