import 'package:flutter/material.dart';

enum statues { DONE, PENDING }

class TasksTile extends StatelessWidget {
  TasksTile({@required this.item});

  final item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(item["name"]),
      trailing: Checkbox(
        value: item["status"] == statues.DONE,
      ),
    );
  }
}
