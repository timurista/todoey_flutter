import 'package:flutter/material.dart';
import 'package:todoeyflutter/models/tasks.dart';

class TasksTile extends StatelessWidget {
  TasksTile({@required this.item});

  final item;

  @override
  Widget build(BuildContext context) {
    final isChecked = item.status == StatusEum.DONE;
    return ListTile(
      title: Text(
        item.name,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckbox(
          isChecked: isChecked,
          onToggle: (value) {
            print(value);
          }),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  TaskCheckbox({this.isChecked, this.onToggle});

  final bool isChecked;
  final Function onToggle;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      onChanged: onToggle,
      value: isChecked,
      activeColor: Colors.lightBlueAccent,
    );
  }
}
