import 'package:flutter/material.dart';
import 'tasks_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key key,
    @required List items,
  })  : _items = items,
        super(key: key);

  final List _items;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _items.map((item) {
        return TasksTile(
          item: item,
        );
      }).toList(),
    );
  }
}
