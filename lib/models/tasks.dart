import 'dart:collection';

import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

enum StatusEum { DONE, PENDING }

class Task {
  final String name;
  StatusEum status;

  Task({this.name, this.status});

  setStatus(bool checked) {
    status = checked == true ? StatusEum.DONE : StatusEum.PENDING;
  }
}

class TaskData extends ChangeNotifier {
  var data = {};

  List<Task> _tasks = [
    Task(name: "be epic", status: StatusEum.DONE),
    Task(name: "do thing", status: StatusEum.PENDING),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  get taskSize {
    return this.tasks.length;
  }

  addTask(value) {
    if (value == null || value.length == 0) {
      return;
    }
    Task newTask = Task(name: value, status: StatusEum.PENDING);
    this._tasks.add(newTask);
    notifyListeners();
  }

  updateTask(taskIndex, checked) {
    if (taskIndex != -1) {
      this._tasks[taskIndex].setStatus(checked);
      notifyListeners();
    }
  }

  deleteTask(taskIndex) {
    if (taskIndex != -1) {
      this._tasks.removeAt(taskIndex);
      notifyListeners();
    }
  }

  changeData(data) {
    this.data = data;
    notifyListeners();
  }
}
