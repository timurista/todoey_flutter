enum StatusEum { DONE, PENDING }

class Task {
  final String name;
  final StatusEum status;

  Task({this.name, this.status});
}
